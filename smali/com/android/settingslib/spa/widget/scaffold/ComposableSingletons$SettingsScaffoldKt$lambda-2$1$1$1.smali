.class public final Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$1;
.super Ljava/lang/Object;
.source "SettingsScaffold.kt"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, "Item 1"

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$1;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
