.class public final Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$2;
.super Ljava/lang/Object;
.source "SettingsScaffold.kt"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, "Item 2"

    iput-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$2;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$SettingsScaffoldKt$lambda-2$1$1$2;->title:Ljava/lang/String;

    return-object p0
.end method
