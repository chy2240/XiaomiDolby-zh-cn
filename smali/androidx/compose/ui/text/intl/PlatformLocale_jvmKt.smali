.class public abstract Landroidx/compose/ui/text/intl/PlatformLocale_jvmKt;
.super Ljava/lang/Object;
.source "PlatformLocale.jvm.kt"


# direct methods
.method public static final getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
