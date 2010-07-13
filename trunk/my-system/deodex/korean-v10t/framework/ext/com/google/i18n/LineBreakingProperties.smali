.class public Lcom/google/i18n/LineBreakingProperties;
.super Ljava/lang/Object;


# static fields
.field static final AI:B = 0x13t

.field static final AL:B = 0x8t

.field static final B2:B = 0x1bt

.field static final BA:B = 0x1t

.field static final BB:B = 0x14t

.field static final BK:B = 0x3t

.field static final CB:B = 0x23t

.field static final CL:B = 0xct

.field static final CM:B = 0x0t

.field private static final COMMAND_MASK:B = -0x40t

.field static final CR:B = 0x4t

.field private static final ENTRY_COUNT:I = 0x680

.field static final EX:B = 0x6t

.field static final GL:B = 0x12t

.field static final H2:B = 0x1ft

.field static final H3:B = 0x20t

.field static final HY:B = 0xet

.field static final ID:B = 0x1et

.field static final IN:B = 0x1ct

.field static final IS:B = 0xdt

.field static final JL:B = 0x16t

.field static final JT:B = 0x18t

.field static final JV:B = 0x17t

.field static final LF:B = 0x2t

.field private static final LITERAL:B = -0x40t

.field private static final LITERAL_IS_1:B = 0x40t

.field private static final LITERAL_IS_2:B = -0x80t

.field static final NL:B = 0x11t

.field static final NS:B = 0x19t

.field static final NU:B = 0x10t

.field static final OP:B = 0xbt

.field private static final PAIR_COPY:B = 0x0t

.field static final PO:B = 0xat

.field static final PR:B = 0x9t

.field static final QU:B = 0x7t

.field static final SA:B = 0x15t

.field static final SG:B = 0x21t

.field static final SP:B = 0x5t

.field static final SY:B = 0xft

.field static final WJ:B = 0x1dt

.field static final XX:B = 0x22t

.field static final ZW:B = 0x1at

.field static codePoints:[C

.field private static initialized:Z

.field private static lastCharAndClass:I

.field static lineBreakingClasses:[B

.field private static final packed:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0x4d0

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    sput-object v1, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    sput-object v1, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/i18n/LineBreakingProperties;->initialized:Z

    return-void

    :array_12
    .array-data 0x1
        0xc0t
        0x0t
        0xc1t
        0x9t
        0x42t
        0x43t
        0x84t
        0x40t
        0xc5t
        0x12t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x48t
        0x47t
        0x4bt
        0x4ct
        0x48t
        0x49t
        0x4dt
        0x4et
        0x4dt
        0x4ft
        0x50t
        0xcdt
        0xat
        0x88t
        0xc6t
        0x3t
        0x48t
        0xcbt
        0x1bt
        0x49t
        0x4ct
        0x48t
        0xcbt
        0x1dt
        0x41t
        0x4ct
        0x48t
        0x40t
        0xd1t
        0x6t
        0x40t
        0xd2t
        0x1at
        0x4bt
        0x4at
        0x49t
        0xc8t
        0x3t
        0x53t
        0x88t
        0x53t
        0x47t
        0x48t
        0x41t
        0x48t
        0x8at
        0x49t
        0x53t
        0x94t
        0x48t
        0x53t
        0xc7t
        0x5t
        0x53t
        0xcbt
        0x3t
        0x48t
        0xd3t
        0x17t
        0x48t
        0xd3t
        0x1ft
        0x48t
        0xd3t
        0xcft
        0x3t
        0x54t
        0x53t
        0xd4t
        0x3t
        0x53t
        0x48t
        0x93t
        0x48t
        0xd3t
        0x7t
        0xc8t
        0x4t
        0x53t
        0x48t
        0x54t
        0x48t
        0xc0t
        0x20t
        0xd2t
        0x4ft
        0x40t
        0xd2t
        0xct
        0xc0t
        0x7t
        0xc8t
        0xdt
        0xcdt
        0xet
        0xc8t
        0x6t
        0xc0t
        0xfft
        0x1t
        0xc8t
        0x7t
        0xcdt
        0xfft
        0x1t
        0x41t
        0xc0t
        0x7t
        0xc1t
        0x2dt
        0x40t
        0x48t
        0x40t
        0x88t
        0x40t
        0x86t
        0x40t
        0xc8t
        0x9t
        0xcat
        0x39t
        0xcdt
        0x3t
        0x88t
        0x80t
        0xc6t
        0xbt
        0xc8t
        0x6t
        0xc0t
        0x2at
        0xd0t
        0x15t
        0xcat
        0xat
        0x50t
        0x88t
        0xc0t
        0x3t
        0x48t
        0xc6t
        0x63t
        0x48t
        0x40t
        0xc8t
        0x7t
        0x2t
        0x80t
        0x88t
        0x40t
        0xc8t
        0x4t
        0x90t
        0xc8t
        0xat
        0xc0t
        0x17t
        0x48t
        0xc0t
        0x1et
        0xc8t
        0x1dt
        0xc0t
        0x59t
        0xc8t
        0xbt
        0xd0t
        0xft
        0xc8t
        0xat
        0xc0t
        0x21t
        0xc8t
        0x9t
        0xcdt
        0x4t
        0x46t
        0x48t
        0xc0t
        0x87t
        0x2t
        0xc8t
        0x3t
        0xc0t
        0x38t
        0x48t
        0x40t
        0xc8t
        0x12t
        0x40t
        0xc8t
        0x7t
        0xc0t
        0xat
        0x81t
        0x90t
        0xc8t
        0xat
        0xc0t
        0x11t
        0xc8t
        0x4t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x10t
        0xc0t
        0x9t
        0xc8t
        0x5t
        0xc0t
        0x6t
        0xd0t
        0x4t
        0xc8t
        0xat
        0x89t
        0x88t
        0xc0t
        0xdt
        0xc8t
        0x4t
        0xc0t
        0x37t
        0xc8t
        0x1dt
        0xd0t
        0xdt
        0xc0t
        0xat
        0x88t
        0xc0t
        0x3t
        0xc8t
        0x10t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x12t
        0xc0t
        0x12t
        0xd0t
        0x4t
        0xc9t
        0xbt
        0xc0t
        0x10t
        0xc8t
        0x4t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x1et
        0xd0t
        0xat
        0xc8t
        0xat
        0xc0t
        0x12t
        0x48t
        0xc0t
        0x3bt
        0xc8t
        0x12t
        0xc0t
        0x7t
        0xd0t
        0xft
        0xc8t
        0xat
        0xc9t
        0x9t
        0x48t
        0xc0t
        0x7t
        0xc8t
        0x4t
        0xc0t
        0x39t
        0xc8t
        0x1at
        0xc0t
        0xat
        0xd0t
        0x4t
        0xc8t
        0x12t
        0xc0t
        0xat
        0xc8t
        0x3t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x20t
        0xc0t
        0x4t
        0xd0t
        0x4t
        0xc8t
        0xbt
        0xc0t
        0x11t
        0xc8t
        0x3t
        0xc0t
        0x39t
        0xc8t
        0x22t
        0x80t
        0xd0t
        0x4t
        0xc8t
        0xat
        0xcat
        0x9t
        0xc0t
        0x9t
        0xc8t
        0x3t
        0xc0t
        0x45t
        0xc8t
        0x2at
        0xd5t
        0xdt
        0xc9t
        0x3et
        0x55t
        0xc8t
        0xft
        0x50t
        0xc1t
        0xat
        0xd5t
        0x27t
        0xd0t
        0x4ft
        0xd5t
        0xct
        0xc8t
        0x24t
        0x54t
        0xc8t
        0x4t
        0x54t
        0x92t
        0x54t
        0x81t
        0x52t
        0x46t
        0xd2t
        0x5t
        0x48t
        0x46t
        0x48t
        0xc0t
        0x3t
        0x88t
        0xd0t
        0x6t
        0xc8t
        0xat
        0xc1t
        0xat
        0x40t
        0x48t
        0x2t
        0x40t
        0x4bt
        0x4ct
        0x2t
        0x40t
        0x88t
        0xc0t
        0x31t
        0xc1t
        0xet
        0x40t
        0xc1t
        0x5t
        0x40t
        0x88t
        0xc0t
        0x8t
        0xc1t
        0x2et
        0x88t
        0xc0t
        0x6t
        0x48t
        0xd4t
        0x9t
        0x81t
        0x54t
        0x48t
        0xd5t
        0x2ct
        0xd0t
        0x40t
        0xc1t
        0xat
        0x88t
        0xd5t
        0x4t
        0xc8t
        0x50t
        0xd6t
        0x60t
        0xd7t
        0x60t
        0xd8t
        0x48t
        0xc8t
        0x58t
        0xc0t
        0xdft
        0x2t
        0x48t
        0x41t
        0x48t
        0xc1t
        0x9et
        0x6t
        0x48t
        0xcbt
        0x1at
        0x4ct
        0xc8t
        0x4t
        0xc1t
        0x4bt
        0xc8t
        0x3t
        0xc0t
        0x24t
        0xc8t
        0xet
        0xc0t
        0x12t
        0xc1t
        0x3t
        0xc8t
        0xbt
        0xc0t
        0x12t
        0xc8t
        0xet
        0xc0t
        0x12t
        0xd5t
        0xet
        0xc1t
        0x54t
        0x99t
        0x55t
        0x41t
        0x48t
        0x41t
        0x49t
        0x55t
        0xd0t
        0x4t
        0xc8t
        0x10t
        0xc6t
        0x12t
        0x81t
        0x94t
        0x48t
        0x46t
        0x88t
        0x40t
        0xd2t
        0x3t
        0x90t
        0xc8t
        0x10t
        0xc0t
        0x89t
        0x1t
        0x48t
        0xc0t
        0x76t
        0xc8t
        0x20t
        0xc6t
        0x4t
        0x90t
        0xd5t
        0xat
        0xd0t
        0x80t
        0x1t
        0xd5t
        0xet
        0x88t
        0xc0t
        0x37t
        0xc8t
        0x7t
        0xc0t
        0xe2t
        0x1t
        0xc8t
        0x5t
        0xc0t
        0x2ft
        0xc8t
        0x11t
        0xd0t
        0xbt
        0xc1t
        0xat
        0xc8t
        0x7t
        0xc0t
        0xat
        0xc8t
        0x9t
        0xc0t
        0xct
        0xc8t
        0x3t
        0xc0t
        0x1et
        0xc8t
        0xdt
        0x90t
        0xc8t
        0x50t
        0xc0t
        0x24t
        0xc1t
        0x17t
        0xd0t
        0x5t
        0xc8t
        0xdt
        0xd0t
        0x3t
        0xc8t
        0xat
        0xc1t
        0x24t
        0xc8t
        0x82t
        0x1t
        0xc0t
        0xc0t
        0x1t
        0xc8t
        0x40t
        0xd4t
        0xfdt
        0x3t
        0x48t
        0x81t
        0xd2t
        0x7t
        0x41t
        0xdat
        0x3t
        0x40t
        0xc1t
        0x4t
        0x52t
        0x41t
        0x9bt
        0x53t
        0x88t
        0x47t
        0x8bt
        0x47t
        0xcbt
        0x3t
        0x47t
        0x53t
        0x88t
        0x9ct
        0xc1t
        0x3t
        0x43t
        0x80t
        0xd2t
        0x5t
        0x4at
        0xc8t
        0x8t
        0x47t
        0x93t
        0x59t
        0x88t
        0xcdt
        0x6t
        0x4bt
        0x4ct
        0x59t
        0xc8t
        0x3t
        0xc1t
        0xct
        0x48t
        0x41t
        0xc8t
        0x4t
        0x41t
        0xddt
        0x3t
        0x48t
        0xc0t
        0x9t
        0xc8t
        0x6t
        0xd3t
        0x4t
        0x48t
        0xcbt
        0x8t
        0x4ct
        0x53t
        0x48t
        0x53t
        0xc8t
        0x4t
        0xcbt
        0x8t
        0x4ct
        0x88t
        0xc9t
        0x10t
        0xcat
        0x7t
        0x49t
        0xc0t
        0x28t
        0xc8t
        0x30t
        0xcat
        0x3t
        0x48t
        0x53t
        0x48t
        0xcat
        0x3t
        0x48t
        0xd3t
        0x9t
        0x48t
        0x89t
        0x48t
        0xd3t
        0xat
        0x88t
        0xd3t
        0x8t
        0x48t
        0xd3t
        0x28t
        0x88t
        0xd3t
        0x5t
        0x48t
        0x93t
        0x48t
        0x53t
        0xc8t
        0xct
        0xd3t
        0x4t
        0xc8t
        0xat
        0xd3t
        0x16t
        0xc8t
        0xat
        0xd3t
        0x38t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x2bt
        0x48t
        0x53t
        0x88t
        0xd3t
        0x3t
        0x88t
        0x93t
        0x48t
        0xd3t
        0x3t
        0x48t
        0x53t
        0x49t
        0x88t
        0x53t
        0x48t
        0xd3t
        0x4t
        0x48t
        0x93t
        0xc8t
        0x4t
        0x93t
        0x48t
        0x53t
        0x2t
        0xc8t
        0x6t
        0x53t
        0x48t
        0xd3t
        0x5t
        0xc8t
        0x4t
        0xd3t
        0x4t
        0x88t
        0xd3t
        0xat
        0x48t
        0xd3t
        0x3t
        0x48t
        0xd3t
        0x5t
        0x48t
        0xd3t
        0xdt
        0x88t
        0x93t
        0xc8t
        0x4t
        0x93t
        0x88t
        0x2t
        0xd3t
        0x12t
        0x88t
        0x93t
        0x88t
        0xd3t
        0xdt
        0x48t
        0xd3t
        0x3t
        0x48t
        0xd3t
        0xbt
        0x48t
        0xd3t
        0x19t
        0x48t
        0xd3t
        0x52t
        0x48t
        0xcbt
        0x16t
        0x4ct
        0x48t
        0xd3t
        0xb5t
        0x2t
        0xc8t
        0x9ft
        0x1t
        0x53t
        0xc8t
        0x4ct
        0xd3t
        0x4t
        0xc8t
        0x25t
        0xd3t
        0xbt
        0xc8t
        0x10t
        0x93t
        0xc8t
        0x4t
        0xd3t
        0xat
        0x88t
        0x53t
        0xc8t
        0x7t
        0xd3t
        0x8t
        0x88t
        0x93t
        0x88t
        0xd3t
        0x4t
        0x4t
        0xc8t
        0x3t
        0x93t
        0x48t
        0x93t
        0xc8t
        0x4t
        0xd3t
        0x10t
        0xc8t
        0x4t
        0xd3t
        0x9t
        0x48t
        0xd3t
        0x15t
        0x88t
        0x93t
        0x48t
        0xd3t
        0x4t
        0x88t
        0xd3t
        0x4t
        0xc8t
        0x4t
        0xd3t
        0x4t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x21t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x1dt
        0x88t
        0x53t
        0xc8t
        0x3t
        0x53t
        0xc8t
        0x4t
        0x53t
        0x88t
        0x53t
        0x48t
        0xc7t
        0xebt
        0x1t
        0xc8t
        0x6t
        0x46t
        0x88t
        0xcbt
        0x4t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x4t
        0x4ct
        0x53t
        0xc8t
        0x1et
        0xcbt
        0x31t
        0x4ct
        0x48t
        0xcbt
        0x1ft
        0x4ct
        0x4bt
        0x2t
        0x2t
        0x4ct
        0xc8t
        0x3t
        0xcbt
        0x93t
        0x3t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x8t
        0x4t
        0x4ct
        0x48t
        0xcbt
        0x3ft
        0x4ct
        0x4bt
        0x4ct
        0x48t
        0xcbt
        0x20t
        0x4ct
        0x48t
        0xc6t
        0xfbt
        0x5t
        0x41t
        0xc8t
        0x3t
        0x46t
        0x41t
        0x48t
        0xc7t
        0x80t
        0x2t
        0xc1t
        0xet
        0xc8t
        0x8t
        0x41t
        0x4bt
        0xc7t
        0x4t
        0xdet
        0x64t
        0xcct
        0x81t
        0x3t
        0x9et
        0x99t
        0x5et
        0x8bt
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x4ct
        0x5et
        0x8bt
        0x4ct
        0x4bt
        0x2t
        0x2t
        0x4ct
        0x59t
        0x4bt
        0x4ct
        0x9et
        0xc0t
        0xat
        0xdet
        0x6t
        0xd9t
        0xbt
        0x9et
        0xd9t
        0x4t
        0x5et
        0x59t
        0x2t
        0x4t
        0x5et
        0xd9t
        0x19t
        0x5et
        0xd9t
        0x1ft
        0x5et
        0x59t
        0x2t
        0x5et
        0xd9t
        0x6t
        0x2t
        0xc0t
        0x4t
        0x99t
        0xdet
        0x4t
        0x59t
        0x9et
        0x59t
        0x5et
        0x2t
        0x4t
        0xd9t
        0x19t
        0x5et
        0xd9t
        0x1ft
        0x5et
        0x59t
        0x2t
        0x5et
        0xd9t
        0x6t
        0x2t
        0x9et
        0xd9t
        0x4t
        0xdet
        0x4t
        0xd9t
        0xf1t
        0x1t
        0xdet
        0x10t
        0xc8t
        0xc0t
        0x37t
        0xdet
        0x40t
        0xd9t
        0x95t
        0xa4t
        0x1t
        0x5et
        0xc8t
        0xeat
        0x9t
        0xc6t
        0x8ct
        0x2t
        0x41t
        0x46t
        0x41t
        0x48t
        0xd0t
        0x10t
        0xc8t
        0xat
        0xc0t
        0xd8t
        0x3t
        0x48t
        0xc0t
        0x3t
        0x48t
        0xc0t
        0x4t
        0x48t
        0xc0t
        0x17t
        0xc8t
        0x5t
        0xd4t
        0x4ct
        0x86t
        0xc0t
        0xat
        0x88t
        0xc0t
        0x32t
        0xc1t
        0x1at
        0x90t
        0xc8t
        0x3at
        0xc0t
        0x1ct
        0xc1t
        0x8t
        0x88t
        0xc0t
        0x17t
        0xc8t
        0x18t
        0xdft
        0xa1t
        0x5t
        0x60t
        0xdft
        0x1bt
        0x2t
        0x4t
        0x8t
        0x10t
        0x20t
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x32t
        0x60t
        0xe1t
        0x77t
        0xe2t
        0x80t
        0x10t
        0xdet
        0x80t
        0x32t
        0xc8t
        0x80t
        0x4t
        0xc0t
        0x1et
        0x48t
        0xcbt
        0x9ft
        0x4t
        0x4ct
        0xc8t
        0x11t
        0xcat
        0xact
        0x1t
        0x48t
        0xc0t
        0x3t
        0xcdt
        0x10t
        0x4ct
        0x8dt
        0x86t
        0x8bt
        0x4ct
        0x5ct
        0xc0t
        0x7t
        0xdet
        0x10t
        0xcbt
        0x5t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x6t
        0x4ct
        0x5et
        0x8bt
        0x4ct
        0x5et
        0xcct
        0x7t
        0x5et
        0x4ct
        0x99t
        0x86t
        0x9et
        0x4bt
        0x4ct
        0x2t
        0x2t
        0x5et
        0xc9t
        0xat
        0x4at
        0x5et
        0xc8t
        0x5t
        0xddt
        0x8ft
        0x1t
        0x86t
        0x5et
        0x89t
        0x4at
        0x5et
        0x8bt
        0x4ct
        0x5et
        0x8ct
        0x5et
        0x4ct
        0x5et
        0xd9t
        0xbt
        0x9et
        0xc6t
        0x3t
        0x5et
        0xcbt
        0x1bt
        0x5et
        0x4ct
        0x5et
        0xcbt
        0x1dt
        0x5et
        0x4ct
        0x5et
        0x4bt
        0x4ct
        0x8bt
        0x4ct
        0x99t
        0x48t
        0x59t
        0xc8t
        0xat
        0xd9t
        0x2dt
        0x88t
        0xcat
        0x40t
        0x49t
        0x5et
        0xc9t
        0x3t
        0xc8t
        0x3t
        0xc0t
        0x11t
        0xe3t
        0x3t
        0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assignClass(C)I
    .registers 4

    const/16 v2, 0x8

    sget-object v0, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v1, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    invoke-static {p0, v1}, Lcom/google/i18n/LineBreakingProperties;->binarySearch(C[C)I

    move-result v1

    aget-byte v0, v0, v1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1c

    move v0, v2

    :cond_11
    :goto_11
    const/16 v1, 0x3033

    if-lt p0, v1, :cond_1b

    const/16 v1, 0x3035

    if-gt p0, v1, :cond_1b

    const/16 v0, 0x1c

    :cond_1b
    return v0

    :cond_1c
    const/16 v1, 0x23

    if-ne v0, v1, :cond_23

    const/16 v0, 0x1e

    goto :goto_11

    :cond_23
    const/16 v1, 0x15

    if-ne v0, v1, :cond_29

    move v0, v2

    goto :goto_11

    :cond_29
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2f

    move v0, v2

    goto :goto_11

    :cond_2f
    const/16 v1, 0x22

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_11
.end method

.method static binarySearch(C[C)I
    .registers 7

    const/4 v0, 0x0

    array-length v1, p1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aget-char v3, p1, v2

    if-lt p0, v3, :cond_15

    move v1, v2

    goto :goto_5

    :cond_15
    move v0, v2

    goto :goto_5

    :cond_17
    array-length v0, p1

    if-eqz v0, :cond_20

    aget-char v0, p1, v1

    if-lt p0, v0, :cond_20

    move v0, v1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public static canBreak(CC)Z
    .registers 10

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/google/i18n/LineBreakingProperties;->initialized:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/i18n/LineBreakingProperties;->initialize()V

    :cond_f
    sget v0, Lcom/google/i18n/LineBreakingProperties;->lastCharAndClass:I

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne v1, p0, :cond_27

    shr-int/lit8 v0, v0, 0x10

    :goto_19
    invoke-static {p1}, Lcom/google/i18n/LineBreakingProperties;->assignClass(C)I

    move-result v1

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v2, p1

    sput v2, Lcom/google/i18n/LineBreakingProperties;->lastCharAndClass:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2c

    move v0, v6

    :goto_26
    return v0

    :cond_27
    invoke-static {p0}, Lcom/google/i18n/LineBreakingProperties;->assignClass(C)I

    move-result v0

    goto :goto_19

    :cond_2c
    const/4 v2, 0x4

    if-ne v0, v2, :cond_34

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    move v0, v3

    goto :goto_26

    :cond_34
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    const/16 v2, 0x11

    if-ne v0, v2, :cond_40

    :cond_3e
    move v0, v6

    goto :goto_26

    :cond_40
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x11

    if-ne v1, v2, :cond_4f

    :cond_4d
    move v0, v3

    goto :goto_26

    :cond_4f
    const/4 v2, 0x5

    if-eq v1, v2, :cond_56

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_58

    :cond_56
    move v0, v3

    goto :goto_26

    :cond_58
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5e

    move v0, v6

    goto :goto_26

    :cond_5e
    if-nez v0, :cond_61

    move v0, v4

    :cond_61
    if-nez v1, :cond_64

    move v1, v4

    :cond_64
    const/16 v2, 0x1d

    if-eq v1, v2, :cond_6c

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_6e

    :cond_6c
    move v0, v3

    goto :goto_26

    :cond_6e
    const/4 v2, 0x5

    if-eq v0, v2, :cond_75

    const/16 v2, 0x12

    if-eq v1, v2, :cond_79

    :cond_75
    const/16 v2, 0x12

    if-ne v0, v2, :cond_7b

    :cond_79
    move v0, v3

    goto :goto_26

    :cond_7b
    const/16 v2, 0xc

    if-eq v1, v2, :cond_8a

    const/4 v2, 0x6

    if-eq v1, v2, :cond_8a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8a

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8c

    :cond_8a
    move v0, v3

    goto :goto_26

    :cond_8c
    const/16 v2, 0xb

    if-ne v0, v2, :cond_92

    move v0, v3

    goto :goto_26

    :cond_92
    const/4 v2, 0x7

    if-ne v0, v2, :cond_9b

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9b

    move v0, v3

    goto :goto_26

    :cond_9b
    const/16 v2, 0xc

    if-ne v0, v2, :cond_a5

    const/16 v2, 0x19

    if-ne v1, v2, :cond_a5

    move v0, v3

    goto :goto_26

    :cond_a5
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_b0

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_b0

    move v0, v3

    goto/16 :goto_26

    :cond_b0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_b6

    move v0, v6

    goto/16 :goto_26

    :cond_b6
    const/4 v2, 0x7

    if-eq v1, v2, :cond_bc

    const/4 v2, 0x7

    if-ne v0, v2, :cond_bf

    :cond_bc
    move v0, v3

    goto/16 :goto_26

    :cond_bf
    const/16 v2, 0x23

    if-eq v1, v2, :cond_c7

    const/16 v2, 0x23

    if-ne v0, v2, :cond_ca

    :cond_c7
    move v0, v6

    goto/16 :goto_26

    :cond_ca
    if-eq v1, v6, :cond_d8

    const/16 v2, 0xe

    if-eq v1, v2, :cond_d8

    const/16 v2, 0x19

    if-eq v1, v2, :cond_d8

    const/16 v2, 0x14

    if-ne v0, v2, :cond_db

    :cond_d8
    move v0, v3

    goto/16 :goto_26

    :cond_db
    if-eq v0, v4, :cond_e7

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_e7

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_e7

    if-ne v0, v5, :cond_ee

    :cond_e7
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_ee

    move v0, v3

    goto/16 :goto_26

    :cond_ee
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_f4

    if-eq v1, v7, :cond_fc

    :cond_f4
    if-ne v0, v4, :cond_f8

    if-eq v1, v5, :cond_fc

    :cond_f8
    if-ne v0, v5, :cond_ff

    if-ne v1, v4, :cond_ff

    :cond_fc
    move v0, v3

    goto/16 :goto_26

    :cond_ff
    const/16 v2, 0x9

    if-ne v0, v2, :cond_109

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_10d

    if-eq v1, v4, :cond_10d

    :cond_109
    if-ne v0, v7, :cond_110

    if-ne v1, v4, :cond_110

    :cond_10d
    move v0, v3

    goto/16 :goto_26

    :cond_110
    const/16 v2, 0xc

    if-eq v0, v2, :cond_116

    if-ne v0, v5, :cond_11c

    :cond_116
    if-eq v1, v7, :cond_138

    const/16 v2, 0x9

    if-eq v1, v2, :cond_138

    :cond_11c
    if-eq v0, v7, :cond_122

    const/16 v2, 0x9

    if-ne v0, v2, :cond_128

    :cond_122
    const/16 v2, 0xb

    if-eq v1, v2, :cond_138

    if-eq v1, v5, :cond_138

    :cond_128
    const/16 v2, 0xe

    if-eq v0, v2, :cond_136

    const/16 v2, 0xd

    if-eq v0, v2, :cond_136

    if-eq v0, v5, :cond_136

    const/16 v2, 0xf

    if-ne v0, v2, :cond_13b

    :cond_136
    if-ne v1, v5, :cond_13b

    :cond_138
    move v0, v3

    goto/16 :goto_26

    :cond_13b
    const/16 v2, 0x16

    if-ne v0, v2, :cond_14f

    const/16 v2, 0x16

    if-eq v1, v2, :cond_16b

    const/16 v2, 0x17

    if-eq v1, v2, :cond_16b

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_16b

    const/16 v2, 0x20

    if-eq v1, v2, :cond_16b

    :cond_14f
    const/16 v2, 0x17

    if-eq v0, v2, :cond_157

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_15f

    :cond_157
    const/16 v2, 0x17

    if-eq v1, v2, :cond_16b

    const/16 v2, 0x18

    if-eq v1, v2, :cond_16b

    :cond_15f
    const/16 v2, 0x18

    if-eq v0, v2, :cond_167

    const/16 v2, 0x20

    if-ne v0, v2, :cond_16e

    :cond_167
    const/16 v2, 0x18

    if-ne v1, v2, :cond_16e

    :cond_16b
    move v0, v3

    goto/16 :goto_26

    :cond_16e
    const/16 v2, 0x16

    if-eq v0, v2, :cond_182

    const/16 v2, 0x17

    if-eq v0, v2, :cond_182

    const/16 v2, 0x18

    if-eq v0, v2, :cond_182

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_182

    const/16 v2, 0x20

    if-ne v0, v2, :cond_188

    :cond_182
    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1a0

    if-eq v1, v7, :cond_1a0

    :cond_188
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1a3

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1a0

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1a0

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1a0

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1a0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1a3

    :cond_1a0
    move v0, v3

    goto/16 :goto_26

    :cond_1a3
    if-ne v0, v4, :cond_1aa

    if-ne v1, v4, :cond_1aa

    move v0, v3

    goto/16 :goto_26

    :cond_1aa
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1b3

    if-ne v1, v4, :cond_1b3

    move v0, v3

    goto/16 :goto_26

    :cond_1b3
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1c4

    if-ne v1, v4, :cond_1c4

    const/16 v2, 0x3001

    if-eq p0, v2, :cond_1c1

    const/16 v2, 0x3002

    if-ne p0, v2, :cond_1c4

    :cond_1c1
    move v0, v6

    goto/16 :goto_26

    :cond_1c4
    if-eq v0, v4, :cond_1c8

    if-ne v0, v5, :cond_1cc

    :cond_1c8
    const/16 v2, 0xb

    if-eq v1, v2, :cond_1d4

    :cond_1cc
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1d7

    if-eq v1, v4, :cond_1d4

    if-ne v1, v5, :cond_1d7

    :cond_1d4
    move v0, v3

    goto/16 :goto_26

    :cond_1d7
    move v0, v6

    goto/16 :goto_26
.end method

.method private static declared-synchronized initialize()V
    .registers 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-class v0, Lcom/google/i18n/LineBreakingProperties;

    monitor-enter v0

    :try_start_5
    sget-boolean v1, Lcom/google/i18n/LineBreakingProperties;->initialized:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_cf

    if-eqz v1, :cond_b

    :goto_9
    monitor-exit v0

    return-void

    :cond_b
    const/16 v1, 0x680

    :try_start_d
    new-array v1, v1, [C

    sput-object v1, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    const/16 v1, 0x680

    new-array v1, v1, [B

    sput-object v1, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    move v1, v8

    move v2, v8

    :goto_19
    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    array-length v3, v3

    if-ge v1, v3, :cond_b3

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, -0x40

    if-nez v3, :cond_4d

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x3f

    move v4, v2

    move v2, v8

    :goto_2e
    if-ge v2, v3, :cond_49

    sget-object v5, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    sget-object v6, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    sub-int v7, v4, v3

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    sget-object v5, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v6, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sub-int v7, v4, v3

    aget-byte v6, v6, v7

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_49
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_19

    :cond_4d
    const/16 v4, 0x40

    if-ne v3, v4, :cond_66

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    const/4 v4, 0x1

    aput-char v4, v3, v2

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v4, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v4, v4, v1

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_66
    const/16 v4, -0x80

    if-ne v3, v4, :cond_7f

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    const/4 v4, 0x2

    aput-char v4, v3, v2

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v4, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v4, v4, v1

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_7f
    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v4, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v4, v4, v1

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v3, v8

    move v4, v1

    move v1, v8

    :cond_8f
    sget-object v5, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x7f

    shl-int/2addr v5, v3

    add-int/2addr v1, v5

    int-to-char v1, v1

    add-int/lit8 v3, v3, 0x7

    sget-object v5, Lcom/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, -0x80

    if-eqz v5, :cond_b1

    move v5, v9

    :goto_a3
    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_8f

    sget-object v3, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    aput-char v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v4

    goto/16 :goto_19

    :cond_b1
    move v5, v8

    goto :goto_a3

    :cond_b3
    move v1, v9

    :goto_b4
    sget-object v2, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    array-length v2, v2

    if-ge v1, v2, :cond_ca

    sget-object v2, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    aget-char v3, v2, v1

    sget-object v4, Lcom/google/i18n/LineBreakingProperties;->codePoints:[C

    sub-int v5, v1, v9

    aget-char v4, v4, v5

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_ca
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/i18n/LineBreakingProperties;->initialized:Z
    :try_end_cd
    .catchall {:try_start_d .. :try_end_cd} :catchall_cf

    goto/16 :goto_9

    :catchall_cf
    move-exception v1

    monitor-exit v0

    throw v1
.end method
