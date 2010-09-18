.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final BACKGROUND:Ljava/awt/font/TextAttribute; = null

.field public static final BIDI_EMBEDDING:Ljava/awt/font/TextAttribute; = null

.field public static final CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute; = null

.field public static final FAMILY:Ljava/awt/font/TextAttribute; = null

.field public static final FONT:Ljava/awt/font/TextAttribute; = null

.field public static final FOREGROUND:Ljava/awt/font/TextAttribute; = null

.field public static final INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute; = null

.field public static final INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute; = null

.field public static final JUSTIFICATION:Ljava/awt/font/TextAttribute; = null

.field public static final JUSTIFICATION_FULL:Ljava/lang/Float; = null

.field public static final JUSTIFICATION_NONE:Ljava/lang/Float; = null

.field public static final NUMERIC_SHAPING:Ljava/awt/font/TextAttribute; = null

.field public static final POSTURE:Ljava/awt/font/TextAttribute; = null

.field public static final POSTURE_OBLIQUE:Ljava/lang/Float; = null

.field public static final POSTURE_REGULAR:Ljava/lang/Float; = null

.field public static final RUN_DIRECTION:Ljava/awt/font/TextAttribute; = null

.field public static final RUN_DIRECTION_LTR:Ljava/lang/Boolean; = null

.field public static final RUN_DIRECTION_RTL:Ljava/lang/Boolean; = null

.field public static final SIZE:Ljava/awt/font/TextAttribute; = null

.field public static final STRIKETHROUGH:Ljava/awt/font/TextAttribute; = null

.field public static final STRIKETHROUGH_ON:Ljava/lang/Boolean; = null

.field public static final SUPERSCRIPT:Ljava/awt/font/TextAttribute; = null

.field public static final SUPERSCRIPT_SUB:Ljava/lang/Integer; = null

.field public static final SUPERSCRIPT_SUPER:Ljava/lang/Integer; = null

.field public static final SWAP_COLORS:Ljava/awt/font/TextAttribute; = null

.field public static final SWAP_COLORS_ON:Ljava/lang/Boolean; = null

.field public static final TRANSFORM:Ljava/awt/font/TextAttribute; = null

.field public static final UNDERLINE:Ljava/awt/font/TextAttribute; = null

.field public static final UNDERLINE_LOW_DASHED:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_DOTTED:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_GRAY:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer; = null

.field public static final UNDERLINE_ON:Ljava/lang/Integer; = null

.field public static final WEIGHT:Ljava/awt/font/TextAttribute; = null

.field public static final WEIGHT_BOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_DEMIBOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_DEMILIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_EXTRABOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_EXTRA_LIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_HEAVY:Ljava/lang/Float; = null

.field public static final WEIGHT_LIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_MEDIUM:Ljava/lang/Float; = null

.field public static final WEIGHT_REGULAR:Ljava/lang/Float; = null

.field public static final WEIGHT_SEMIBOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_ULTRABOLD:Ljava/lang/Float; = null

.field public static final WIDTH:Ljava/awt/font/TextAttribute; = null

.field public static final WIDTH_CONDENSED:Ljava/lang/Float; = null

.field public static final WIDTH_EXTENDED:Ljava/lang/Float; = null

.field public static final WIDTH_REGULAR:Ljava/lang/Float; = null

.field public static final WIDTH_SEMI_CONDENSED:Ljava/lang/Float; = null

.field public static final WIDTH_SEMI_EXTENDED:Ljava/lang/Float; = null

.field private static final attrMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/awt/font/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/high16 v6, 0x3f60

    const/high16 v5, 0x3f40

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/awt/font/TextAttribute;->attrMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "background"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    .line 87
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "bidi_embedding"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    .line 90
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "char_replacement"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    .line 93
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "family"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    .line 96
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "font"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    .line 99
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "foreground"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    .line 102
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method highlight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    .line 106
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 110
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "justification"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    .line 113
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    .line 119
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    .line 122
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "numeric_shaping"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    .line 125
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "posture"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    .line 128
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    .line 131
    new-instance v0, Ljava/lang/Float;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    .line 134
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "run_direction"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    .line 140
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    .line 146
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    .line 149
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    .line 152
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "strikethrough"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    .line 155
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    .line 158
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "superscript"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    .line 161
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    .line 164
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    .line 167
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "swap_colors"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    .line 173
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    .line 176
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "transform"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    .line 179
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 185
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    .line 191
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    .line 197
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    .line 203
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    .line 209
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    .line 215
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    .line 218
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "weight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    .line 224
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    .line 229
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    .line 235
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    .line 240
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    .line 246
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    .line 250
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    .line 254
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fe0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    .line 257
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    .line 260
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4010

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    .line 263
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4020

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    .line 269
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4030

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    .line 272
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "width"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    .line 278
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    .line 284
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    .line 289
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    .line 294
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    .line 299
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v0, Ljava/awt/font/TextAttribute;->attrMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Ljava/awt/font/TextAttribute;->attrMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/awt/font/TextAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/font/TextAttribute;

    .line 73
    .local v0, result:Ljava/awt/font/TextAttribute;
    if-eqz v0, :cond_f

    .line 74
    return-object v0

    .line 77
    :cond_f
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
