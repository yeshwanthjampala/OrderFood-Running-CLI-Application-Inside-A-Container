# FROM yeshwanthjampala/food-order-app:latest
# WORKDIR /order-food
# CMD [ "go", "run", "." ]

# Use the golang:1.18.6-alpine3.16 as the base image
FROM golang:1.18.6-alpine3.16

# Set the working directory inside the container
WORKDIR /app

# Copy the code files from your local system to the container
COPY main.go bill.go go.mod greet.go menu.go modify.go order.go /app/

# You might need to include any other necessary setup or dependencies here

# Command to build your application with a specified output binary name
RUN go build -o myapp

# Command to run the application when the container starts
CMD ["./myapp"]
