// `Any` data is data that we don"t know the type of yet.
// We likely get data like this from interop with Erlang, or from
// IO with the outside world.
//
pub external type Any;

// Convert any Gleam data into `Any` data.
//
pub external fn from(a) -> Any = "gleam__stdlib" "identity";

// Unsafely cast any type into any other type.o
//
// This is an escape hatch for the type system that may be useful when wrapping
// native Erlang APIs. It is to be used as a last measure only.
//
pub external fn unsafeCoerce(a) -> b = "gleam__stdlib" "identity";
