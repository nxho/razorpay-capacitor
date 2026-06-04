export * from './definitions';
export * from './web';

import { registerPlugin } from '@capacitor/core';
import type { CheckoutPlugin } from './definitions';
const Checkout = registerPlugin<CheckoutPlugin>('Checkout', {
  web: () => import('./web').then((m) => new m.CheckoutWeb()),
});

export { Checkout };
