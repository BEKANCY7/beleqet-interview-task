#!/bin/sh

echo "Running database migrations..."
npx prisma db push --accept-data-loss

echo "Seeding database..."
npx ts-node prisma/seed.ts

echo "Starting application..."
npm run start:prod
