
```objective-c

NSString* foo = @"foo";
id bar = @"bar";

NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
[dict setObject:@"forKey:foo" forKey:foo];
[dict setObject:@"forKey:bar" forKey:bar];
[dict setObject:@"forKey:[NSValue... foo]" forKey:[NSValue valueWithPointer:foo]];
[dict setObject:@"forKey:[NSValue... bar]" forKey:[NSValue valueWithPointer:bar]];

```