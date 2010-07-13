.class Lcom/android/calendar/EditEvent$1$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/EditEvent$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent$1;)V
    .registers 2
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/calendar/EditEvent$1$1;->this$1:Lcom/android/calendar/EditEvent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "d"
    .parameter "w"

    .prologue
    .line 637
    return-void
.end method
