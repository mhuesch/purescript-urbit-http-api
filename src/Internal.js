import * as Urbit from '@urbit/http-api';

export function urbitAuthenticate = ship => url => code => verbose => ha.Urbit.authenticate({ ship, url, code, verbose });
