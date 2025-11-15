import os
from PIL import Image

# Directory to check
DIRECTORY = "/tmp/Hermes/"

# Max allowed size in bytes (2 MB)
MAX_SIZE = 2 * 1024 * 1024

# Resize factor (change as needed)
RESIZE_RATIO = 0.9   # reduces size by 10%


def is_image(file_path):
    """
    Returns True if the file is an image Pillow can open.
    """
    try:
        with Image.open(file_path):
            return True
    except Exception:
        return False


def resize_image(count, file_path):
    """
    Resizes the image by RESIZE_RATIO and overwrites the original file.
    """
    with Image.open(file_path) as img:
#       print(f"Image too large ({size/1024/1024:.2f} MB): {filename}")
        new_width = int(img.width * RESIZE_RATIO)
        new_height = int(img.height * RESIZE_RATIO)
        resized = img.resize((new_width, new_height), Image.LANCZOS)
        resized.save(file_path, optimize=True, quality=85)
        resisedBy = int((100-100*RESIZE_RATIO) * count)
        print(f" {count} - {file_path} resized by {resisedBy}%")


def process_directory(directory):
    for filename in sorted(os.listdir(directory)):
        path = os.path.join(directory, filename)

        if not os.path.isfile(path):
            continue  # skip directories

        if not is_image(path):
            print(f"Skipping non-image: {filename}")
            continue

        count = 0
        while os.path.getsize(path) > MAX_SIZE:
            count = count + 1
            resize_image(count, path)

if __name__ == "__main__":
    process_directory(DIRECTORY)
