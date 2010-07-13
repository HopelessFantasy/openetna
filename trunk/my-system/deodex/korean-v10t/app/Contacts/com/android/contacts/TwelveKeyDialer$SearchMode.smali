.class final enum Lcom/android/contacts/TwelveKeyDialer$SearchMode;
.super Ljava/lang/Enum;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/TwelveKeyDialer$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/TwelveKeyDialer$SearchMode;

.field public static final enum FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

.field public static final enum IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

.field public static final enum STORED:Lcom/android/contacts/TwelveKeyDialer$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/TwelveKeyDialer$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 171
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    const-string v1, "FOUND"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/TwelveKeyDialer$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 172
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    const-string v1, "STORED"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/TwelveKeyDialer$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->STORED:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->STORED:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->$VALUES:[Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/TwelveKeyDialer$SearchMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 169
    const-class v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    return-object p0
.end method

.method public static final values()[Lcom/android/contacts/TwelveKeyDialer$SearchMode;
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->$VALUES:[Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    invoke-virtual {v0}, [Lcom/android/contacts/TwelveKeyDialer$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    return-object v0
.end method
