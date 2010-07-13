.class Lcom/android/contacts/TwelveKeyDialer$1;
.super Landroid/telephony/PhoneStateListener;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 247
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$000(Lcom/android/contacts/TwelveKeyDialer;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->access$100(Lcom/android/contacts/TwelveKeyDialer;Z)V

    .line 257
    :cond_10
    return-void
.end method
