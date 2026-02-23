FROM node:20-alpine

# Create non-root user
RUN addgroup -S app && adduser -S app -G app

WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies as root (safe)
RUN npm install --legacy-peer-deps

# Copy app source
COPY . .

# Fix ownership
RUN chown -R app:app /app

USER app

EXPOSE 5173

CMD ["npm", "run", "dev"]