.class Lcom/android/settings/LocalePicker$Loc;
.super Ljava/lang/Object;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loc"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    return-object v0
.end method
