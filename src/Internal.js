import * as Urbit from '@urbit/http-api';

export let urbitAuthenticate = ship => url => code => verbose => () => Urbit.Urbit.authenticate({ ship, url, code, verbose });

export let urbitCookie = urbit => () => urbit.cookie || "";
