.class public Lcom/svox/pico/Pico;
.super Landroid/app/Activity;
.source "Pico.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/svox/pico/Pico;->finish()V

    .line 41
    return-void
.end method
