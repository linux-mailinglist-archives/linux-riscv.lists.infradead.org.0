Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C01E7C9B
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 14:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vGzgQ0oWXrfQvBFNyvws263rfUklV7fS0Kri1ESqJoI=; b=OEcrDYSukRUJ7KTGCznfVCYvL
	FhtvQTI1IPfCcn35Z9yX0DbrEG1a8p+QPOEp8SjDgRSorwrrG9HbSnc3QSM9/sXSafwUIZcugNnZ8
	k0sTBHbMlPqGi4g+I2IZVYr2ZEniAyTPWobp2ql8GNaDMnC1SJ7734rzCkGmEd5FnHV0EqaeY5y9P
	yYaZSoq7jHn7OpVXK7KdGzoD1NmCu8WSc6/f7kFOUf1hJz1hpaO7Fg5jjr5niVNlo6m+ijl40yNND
	2qkkzYhMGq3K6c2ergbox4UsQOjU1XGPIx8LfqEHmpB4ESp5hFY4OCOk5rsPuhsGQnghIU+zUW1Sv
	GbM12poPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedoW-0005yN-Gz; Fri, 29 May 2020 12:08:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedoS-0005y0-Q8
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 12:08:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so3298630wrt.5
 for <linux-riscv@lists.infradead.org>; Fri, 29 May 2020 05:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vGzgQ0oWXrfQvBFNyvws263rfUklV7fS0Kri1ESqJoI=;
 b=mBkbI/wQaLkVLogzJl87GmMttTQRrtg48uQGw87cetKxyoTbZ8TXDRX6AEGYJ3BZRe
 mFBeT9jFfQzRtebPk19vn4iQ2vSvT9dhv0MPCer2BTIMihVg+YnZbAPU7GVKLY3+IirG
 HYkDdN6fx1+oN6/GW+kLRjlSpogXCaCvbv978puPP6e8FWl0mPevIo1ateS5PYVuk9Ls
 5D7tBFVkBntRHWguyAxjpQ3YU0COkfKCkcOGFTYAi7yGT6VGtRxuonqNp43Nxi0bxPUo
 UZvZWdtfI1nQyQT1/E24yeUt3DWBhKGbGmR3RRxNLM9qLQOY9nBNaEBerSNgD8zv1NjG
 n8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vGzgQ0oWXrfQvBFNyvws263rfUklV7fS0Kri1ESqJoI=;
 b=to2oFrWppOrbiSyr1A4CkaX59FjpR1euW8HVvQ672+y/zKLyoBWvfO7xuTZ1k+XjCd
 wTDlL8/2B0tYflnhS9OzQo5qH1Cb516lwIZVMyxM4jf6I8VxJ0q5t7m99kMwZrtBl4Ja
 FbLQ4+OC03lIoNb+nMfw55xHPC0H5wA2TIWI+3x7FHRldIok1uzAdSqbYKri1pK06VrZ
 sUCQCY2Cegl13iBt9HlhV/ISWdXs2AbroLXhTfaYgJ2leyH+yEVpnGZ4OjFTyWltfVGo
 028VwLPzjlpJvl/ojP0B6dkifUZ1QQA5NHFss/QWRPxFrcCty1eEqKLvWiNI1D7Zkl/0
 81iw==
X-Gm-Message-State: AOAM531y4J+7qu4NYMhDdCrx3qAQskwm9sJDQNK7GH7AzzchfadCzJZ/
 LwW2FoUZGSeFRShsuOjj8Xv6Xy21pm+611dKNH2UE6y9Gkw=
X-Google-Smtp-Source: ABdhPJxcmum5AqvPxZ4BgYibGRAG0WySW6PgECxJEETQ+riECYGz8uccIRvPRLzm9MtnbhHc4//Tc63ju4JFuXcHwcM=
X-Received: by 2002:a05:6000:12c4:: with SMTP id
 l4mr9027325wrx.128.1590754115201; 
 Fri, 29 May 2020 05:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200524085259.24784-1-alex@ghiti.fr>
 <20200524085259.24784-4-alex@ghiti.fr>
In-Reply-To: <20200524085259.24784-4-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 29 May 2020 17:38:22 +0530
Message-ID: <CAAhSdy10F3Yjca8rJDPn2wyzejYivHwTdMtzYPRkms1Rn+NYUg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arch, scripts: Add script to check relocations at
 compile time
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_050836_849601_F588EC4F 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Mackerras <paulus@samba.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 2:26 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Relocating kernel at runtime is done very early in the boot process, so
> it is not convenient to check for relocations there and react in case a
> relocation was not expected.
>
> Powerpc architecture has a script that allows to check at compile time
> for such unexpected relocations: extract the common logic to scripts/
> and add arch specific scripts triggered at postlink.
>
> At the moment, powerpc and riscv architectures take advantage of this
> compile-time check.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/powerpc/tools/relocs_check.sh | 18 ++-------------
>  arch/riscv/Makefile.postlink       | 36 ++++++++++++++++++++++++++++++
>  arch/riscv/tools/relocs_check.sh   | 26 +++++++++++++++++++++
>  scripts/relocs_check.sh            | 20 +++++++++++++++++
>  4 files changed, 84 insertions(+), 16 deletions(-)
>  create mode 100644 arch/riscv/Makefile.postlink
>  create mode 100755 arch/riscv/tools/relocs_check.sh
>  create mode 100755 scripts/relocs_check.sh

Maybe you should send the change arch/powerpc/tools/relocs_check.sh
as a separate patch so that it can be picked up by arch/powerpc maintainers.

>
> diff --git a/arch/powerpc/tools/relocs_check.sh b/arch/powerpc/tools/relocs_check.sh
> index 014e00e74d2b..e367895941ae 100755
> --- a/arch/powerpc/tools/relocs_check.sh
> +++ b/arch/powerpc/tools/relocs_check.sh
> @@ -15,21 +15,8 @@ if [ $# -lt 3 ]; then
>         exit 1
>  fi
>
> -# Have Kbuild supply the path to objdump and nm so we handle cross compilation.
> -objdump="$1"
> -nm="$2"
> -vmlinux="$3"
> -
> -# Remove from the bad relocations those that match an undefined weak symbol
> -# which will result in an absolute relocation to 0.
> -# Weak unresolved symbols are of that form in nm output:
> -# "                  w _binary__btf_vmlinux_bin_end"
> -undef_weak_symbols=$($nm "$vmlinux" | awk '$1 ~ /w/ { print $2 }')
> -
>  bad_relocs=$(
> -$objdump -R "$vmlinux" |
> -       # Only look at relocation lines.
> -       grep -E '\<R_' |
> +${srctree}/scripts/relocs_check.sh "$@" |
>         # These relocations are okay
>         # On PPC64:
>         #       R_PPC64_RELATIVE, R_PPC64_NONE
> @@ -43,8 +30,7 @@ R_PPC_ADDR16_LO
>  R_PPC_ADDR16_HI
>  R_PPC_ADDR16_HA
>  R_PPC_RELATIVE
> -R_PPC_NONE' |
> -       ([ "$undef_weak_symbols" ] && grep -F -w -v "$undef_weak_symbols" || cat)
> +R_PPC_NONE'
>  )
>
>  if [ -z "$bad_relocs" ]; then
> diff --git a/arch/riscv/Makefile.postlink b/arch/riscv/Makefile.postlink
> new file mode 100644
> index 000000000000..bf2b2bca1845
> --- /dev/null
> +++ b/arch/riscv/Makefile.postlink
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# ===========================================================================
> +# Post-link riscv pass
> +# ===========================================================================
> +#
> +# Check that vmlinux relocations look sane
> +
> +PHONY := __archpost
> +__archpost:
> +
> +-include include/config/auto.conf
> +include scripts/Kbuild.include
> +
> +quiet_cmd_relocs_check = CHKREL  $@
> +cmd_relocs_check =                                                     \
> +       $(CONFIG_SHELL) $(srctree)/arch/riscv/tools/relocs_check.sh "$(OBJDUMP)" "$(NM)" "$@"
> +
> +# `@true` prevents complaint when there is nothing to be done
> +
> +vmlinux: FORCE
> +       @true
> +ifdef CONFIG_RELOCATABLE
> +       $(call if_changed,relocs_check)
> +endif
> +
> +%.ko: FORCE
> +       @true
> +
> +clean:
> +       @true
> +
> +PHONY += FORCE clean
> +
> +FORCE:
> +
> +.PHONY: $(PHONY)
> diff --git a/arch/riscv/tools/relocs_check.sh b/arch/riscv/tools/relocs_check.sh
> new file mode 100755
> index 000000000000..baeb2e7b2290
> --- /dev/null
> +++ b/arch/riscv/tools/relocs_check.sh
> @@ -0,0 +1,26 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +# Based on powerpc relocs_check.sh
> +
> +# This script checks the relocations of a vmlinux for "suspicious"
> +# relocations.
> +
> +if [ $# -lt 3 ]; then
> +        echo "$0 [path to objdump] [path to nm] [path to vmlinux]" 1>&2
> +        exit 1
> +fi
> +
> +bad_relocs=$(
> +${srctree}/scripts/relocs_check.sh "$@" |
> +       # These relocations are okay
> +       #       R_RISCV_RELATIVE
> +       grep -F -w -v 'R_RISCV_RELATIVE'
> +)
> +
> +if [ -z "$bad_relocs" ]; then
> +       exit 0
> +fi
> +
> +num_bad=$(echo "$bad_relocs" | wc -l)
> +echo "WARNING: $num_bad bad relocations"
> +echo "$bad_relocs"
> diff --git a/scripts/relocs_check.sh b/scripts/relocs_check.sh
> new file mode 100755
> index 000000000000..137c660499f3
> --- /dev/null
> +++ b/scripts/relocs_check.sh
> @@ -0,0 +1,20 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +# Get a list of all the relocations, remove from it the relocations
> +# that are known to be legitimate and return this list to arch specific
> +# script that will look for suspicious relocations.
> +
> +objdump="$1"
> +nm="$2"
> +vmlinux="$3"
> +
> +# Remove from the possible bad relocations those that match an undefined
> +# weak symbol which will result in an absolute relocation to 0.
> +# Weak unresolved symbols are of that form in nm output:
> +# "                  w _binary__btf_vmlinux_bin_end"
> +undef_weak_symbols=$($nm "$vmlinux" | awk '$1 ~ /w/ { print $2 }')
> +
> +$objdump -R "$vmlinux" |
> +       grep -E '\<R_' |
> +       ([ "$undef_weak_symbols" ] && grep -F -w -v "$undef_weak_symbols" || cat)
> --
> 2.20.1
>

Otherwise, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

