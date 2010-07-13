.class Lcom/android/phone/PhoneUtils$5;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/app/KeyguardManager$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$5;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 3
    .parameter "success"

    .prologue
    .line 1328
    if-eqz p1, :cond_7

    .line 1329
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$5;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$300(Lcom/android/internal/telephony/Phone;)V

    .line 1331
    :cond_7
    return-void
.end method
