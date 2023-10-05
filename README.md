# Create T3 App

This is a [T3 Stack](https://create.t3.gg/) project bootstrapped with `create-t3-app`.

- [Next.js](https://nextjs.org)
- [NextAuth.js](https://next-auth.js.org)
- [Prisma](https://prisma.io)
- [Tailwind CSS](https://tailwindcss.com)
- [tRPC](https://trpc.io)



## Docker

- Install docker-compose (If windows install Docker desktop)
- run `yarn run-docker <migration-name>`
   - \<migration-name\> - optional 

docker-compose creates postgoes=container for development environment

## Migration

```bash
# generate down migration and run
yarn migrate migrate <migration_name>

# only generate down migration
yarn migrate down

# run migrations without generating down
yarn migrate run <migration_name>
```

### Rollback

```bash
yarn rollback <migration_full_name>
```

## Run

```sh
yarn dev
```

## Learn More

To learn more about the [T3 Stack](https://create.t3.gg/), take a look at the following resources:

- [Documentation](https://create.t3.gg/)
- [Learn the T3 Stack](https://create.t3.gg/en/faq#what-learning-resources-are-currently-available) — Check out these awesome tutorials

You can check out the [create-t3-app GitHub repository](https://github.com/t3-oss/create-t3-app) — your feedback and contributions are welcome!

## How do I deploy this?

Follow our deployment guides for [Vercel](https://create.t3.gg/en/deployment/vercel), [Netlify](https://create.t3.gg/en/deployment/netlify) and [Docker](https://create.t3.gg/en/deployment/docker) for more information.
