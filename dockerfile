FROM mcr.microsoft.com/windows/servercore:ltsc2022
WORKDIR /app

# Copy the MSI file into the container
# Make sure the MSI file is in the same directory as this Dockerfile
COPY FiserveDotnetFrameworkTest.msi .

# Optional: Set environment variables
ENV MSI_FILE=FiserveDotnetFrameworkTest.msi

# Optional: Command to run when container starts (e.g., install MSI)
# This example just lists the file
CMD ["cmd", "/c", "dir /app"]

docker login <registry-url>              # For Docker Hub or others

# 2. Build the image
docker build -t <registry-url>/<repo-name>/msi-container:latest .

# 3. Push the image
docker push <registry-url>/<repo-name>/msi-container:latest
