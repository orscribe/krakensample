# KrakenCommon
Common Dependencies for the Kraken Framework.

Kraken is an attempt to create a reactive, easy to use, and robust universal boilerplate for iOS application scaffolding and development.

Among its core features are:
*  A full theming system containing definitions for
    * Brand Colors
    * Semantic Colors
    * Neutral Colors
    * Typography
    * Layout
    * Icons and *more*
* A powerful dependency injection framework that enables themes to be passed to a UI component library allowing for hot swapable themes that change not only colors, but typography and layout as well.
    * This can also be used to enhance accessibility, as colorblind friendly themes can be easily swapped in and out of an app.
* Combine Network layer built on a modern repository pattern with a type generic `Loadable<>` system built in to enhance state management of networking calls and their bound UI components. This system also has built in optional caching for data that infrequently changes, allowing instant load of local information while network requests optionally complete.
* Authentication framework that allows for easy passage of user information to the network layer through a protocol that can be bound to many authentication providers seamlessly.
* Remote Configuration framework to set, bind, store, and refresh configuration data that is available system wide.
* Many other helpers for hex color processing, image loading, and more
