.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.super Ljava/lang/Object;
.source "AttributeTypeAndValue.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static AttributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static final C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final CAPACITY:I

.field private static final CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final KNOWN_NAMES:Ljava/util/HashMap;

.field private static final KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final RFC1779_NAMES:Ljava/util/HashMap;

.field private static final RFC2253_NAMES:Ljava/util/HashMap;

.field private static final RFC2459_NAMES:Ljava/util/HashMap;

.field private static final SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SIZE:I

.field private static final ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;


# instance fields
.field private final oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private value:Lorg/apache/harmony/security/x501/AttributeValue;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x7

    const/16 v4, 0xa

    const/4 v6, 0x4

    .line 120
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    .line 135
    sput v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    .line 136
    sput v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SIZE:I

    .line 137
    sget v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SIZE:I

    sget v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    sput-object v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 140
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_2b0

    const-string v4, "C"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 141
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_2bc

    const-string v4, "CN"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 143
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v7, [I

    fill-array-data v3, :array_2c8

    const-string v4, "DC"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 147
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_2da

    const-string v4, "DNQ"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 149
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_2e6

    const-string v4, "DNQUALIFIER"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 152
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v7, [I

    fill-array-data v3, :array_2f2

    const-string v4, "EMAILADDRESS"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 155
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_304

    const-string v4, "GENERATION"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 157
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_310

    const-string v4, "GIVENNAME"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 160
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_31c

    const-string v4, "INITIALS"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 163
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_328

    const-string v4, "L"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 165
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_334

    const-string v4, "O"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 166
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_340

    const-string v4, "OU"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 169
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_34c

    const-string v4, "SERIALNUMBER"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 171
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_358

    const-string v4, "ST"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 172
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_364

    const-string v4, "STREET"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 174
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_370

    const-string v4, "SURNAME"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 177
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v6, [I

    fill-array-data v3, :array_37c

    const-string v4, "T"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 179
    new-instance v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v3, v7, [I

    fill-array-data v3, :array_388

    const-string v4, "UID"

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 186
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 199
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    .local v0, it:Ljava/util/Iterator;
    :goto_253
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_263

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_253

    .line 226
    :cond_263
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    :cond_26d
    :goto_26d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_281

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 231
    .local v1, o:Ljava/lang/Object;
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq v1, v2, :cond_26d

    .line 232
    check-cast v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_26d

    .line 240
    :cond_281
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 241
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 386
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;-><init>(I)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->AttributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 474
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v4, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->AttributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 140
    nop

    :array_2b0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 141
    :array_2bc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 143
    :array_2c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x26t 0x9t 0x0t 0x0t
        0x2ct 0xf9t 0x24t 0x1t
        0x64t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 147
    :array_2da
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 149
    :array_2e6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 152
    :array_2f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 155
    :array_304
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 157
    :array_310
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    .line 160
    :array_31c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    .line 163
    :array_328
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 165
    :array_334
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 166
    :array_340
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 169
    :array_34c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 171
    :array_358
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 172
    :array_364
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 174
    :array_370
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 177
    :array_37c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 179
    :array_388
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x26t 0x9t 0x0t 0x0t
        0x2ct 0xf9t 0x24t 0x1t
        0x64t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V
    .registers 8
    .parameter "sOid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_28

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_28

    .line 277
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 280
    .local v0, array:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v1

    .line 281
    .local v1, thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v1, :cond_23

    .line 282
    new-instance v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v1           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v1, v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 284
    .restart local v1       #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_23
    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 292
    .end local v0           #array:[I
    .end local v1           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_25
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    .line 293
    return-void

    .line 287
    :cond_28
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iput-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 288
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-nez v2, :cond_25

    .line 289
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.178"

    invoke-static {v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;)V
    .registers 4
    .parameter "oid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-static {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v0

    .line 255
    .local v0, thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v0, :cond_e

    .line 256
    new-instance v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local v0           #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 258
    .restart local v0       #thisOid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_e
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 259
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    .line 260
    return-void
.end method

.method synthetic constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    return-object v0
.end method

.method private static addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .registers 9
    .parameter "oid"

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    .line 511
    .local v3, newOid:[I
    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v4

    sget v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    rem-int v1, v4, v5

    .line 514
    .local v1, index:I
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v4, v1

    .line 515
    .local v2, list:[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    .line 516
    .local v0, i:I
    :goto_11
    aget-object v4, v2, v0

    if-eqz v4, :cond_3a

    .line 519
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 520
    new-instance v4, Ljava/lang/Error;

    const-string v5, "security.17B"

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 516
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 526
    :cond_3a
    sget v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v0, v4, :cond_4c

    .line 527
    new-instance v4, Ljava/lang/Error;

    const-string v5, "security.17C"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    :cond_4c
    aput-object p0, v2, v0

    .line 530
    return-void
.end method

.method private static getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .registers 6
    .parameter "oid"

    .prologue
    .line 494
    invoke-static {p0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v3

    sget v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CAPACITY:I

    rem-int v1, v3, v4

    .line 497
    .local v1, index:I
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v3, v1

    .line 498
    .local v2, list:[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    aget-object v3, v2, v0

    if-eqz v3, :cond_23

    .line 499
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 500
    aget-object v3, v2, v0

    .line 503
    :goto_1f
    return-object v3

    .line 498
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 503
    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private static hashIntArray([I)I
    .registers 5
    .parameter "oid"

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_11

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    .line 536
    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 538
    :cond_11
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public appendName(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 9
    .parameter "attrFormat"
    .parameter "buf"

    .prologue
    const/16 v5, 0x3d

    const-string v4, "CANONICAL"

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, hexFormat:Z
    const-string v3, "RFC1779"

    if-ne p1, v3, :cond_63

    .line 305
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_39

    .line 306
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :goto_1c
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_43

    .line 314
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :goto_38
    return-void

    .line 308
    :cond_39
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 315
    :cond_43
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v4, v4, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_5b

    .line 317
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3, p2}, Lorg/apache/harmony/security/x501/AttributeValue;->appendQEString(Ljava/lang/StringBuffer;)V

    goto :goto_38

    .line 319
    :cond_5b
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 322
    :cond_63
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, group:Ljava/lang/Object;
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    if-eq v3, v0, :cond_71

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    if-ne v3, v0, :cond_a4

    .line 325
    :cond_71
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v3, "CANONICAL"

    if-ne p1, v4, :cond_95

    .line 330
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v2

    .line 331
    .local v2, tag:I
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_95

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_95

    .line 333
    const/4 v1, 0x1

    .line 342
    .end local v2           #tag:I
    :cond_95
    :goto_95
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    if-eqz v1, :cond_af

    .line 345
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 338
    :cond_a4
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const/4 v1, 0x1

    goto :goto_95

    .line 347
    :cond_af
    const-string v3, "CANONICAL"

    if-ne p1, v4, :cond_be

    .line 348
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeCanonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_38

    .line 350
    :cond_be
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_38
.end method

.method public getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method
