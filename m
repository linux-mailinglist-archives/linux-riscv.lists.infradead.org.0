Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72E210428
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 05:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/1rn1ZhmkJHrvu0vAKgJ3x4isEgROd5mLYkCC6Wbe0=; b=iFAIQWsLmyKTgJ
	Dwcn809lBWBqOb/RnWBUrKe2utVh51kpYBtvkeU6ktHTqE8DGVVT+v9FBfa1k/3IHdMOkNB+f3kN2
	9GSQ1HfFCmwTh4jgmZo4oMTsdQ1y/o/dNH4aTk4ry5uAD/Vl9BIp3rFSnsSSGVPTaJoMPZdLgh42B
	KFDsJO46BwkJJ7fdwns/8u5GR6+kKImmteHMIlaNuO46ndi312iKE2AOonutA8mvihJ0VJU+LOh19
	9nwVbGGTGs3z0+MyArEPScB6qgwkE/Mku2Q6lSS8Fcf940Ig+pR1EmX9407QTUOucpVei7SrXP393
	N2L3qhv1lwyCYfT6SEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLfmA-00080W-Ul; Wed, 01 May 2019 03:19:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLfm8-000807-14
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 03:19:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id q15so270219wmf.3
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 20:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hZfpjUvzQBCGmYT6LhESea+vs0RjG9ALzO0ED3TkgAo=;
 b=i3NvShIe1x7vQJdhkfKIYrFJuF/Tt+1niqX7XbhPlDjKszKA9YxI2O4rPhpfT6u1Y4
 EZEqNWyYrDMXb2Gr4fel38tAG0ZeOsAcSjpP2Ru5M7ghNLoWNs4s26VfvflB7wti1cbM
 y7rKDWEMsDDmC2Yt71JZVmgko/JYgeFoMzcIf3BMcJMjm1984D7/4zfRNSnVsDRRUyha
 pUXowjwoC5yBNvYBpCMsjKoTG9MbvVkuh0dDK+6SbIv6uv4QuMBzvI8xTN7NtX0um8h8
 z7uK7aKvFEeXVSBPG2D9R/HlZzXjqX8UOObz9lQl0oM3dAHqFF6lbZIXbXzRThZOid+X
 IzrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hZfpjUvzQBCGmYT6LhESea+vs0RjG9ALzO0ED3TkgAo=;
 b=AaCMZGXb0JK+I+9354SgyE/KQWFUYOoJvzto5YbMunSRoikBjtClXNL9N98YcwuNAC
 km+Bhg6h3BluFE0d/p1l1TwkD5Pyl3mDNS/bxwF2n8mMOl/fb+noCigMLicWB2GGU4uZ
 le9dX/8CsLkEy1XpPf0mQreXvY9AjJWUliR8EZvvmeSNAhw14OPDUlg8gES5/NwHiwiI
 RFgLYSCVgjFA3xEuiu3cx9srYMeZum7/iPtLhkpzOtJaPjapbTGNtec6eylQWCbLLY6I
 lo526ELfkDhNuaBEkDNEXRtH5Zm6aXo3dAvhGxRh94NWeQm4dSa5eoXPbL+m6T2a/Q6x
 cn3w==
X-Gm-Message-State: APjAAAWgUOSnr32hPZwK6r56zOaooj3ZLzTdiA9mVgnVuBDByJimK4xq
 ki0xlk/pkfx3WXIlW3b1shJMRqzzSXhlzZyOdxqsjA==
X-Google-Smtp-Source: APXvYqyjOXbQpUhpwGYT37xLieA/Nitt0naQyljqO2fChbFDINYPzjzg9oid3cpIdnJL/1NzPfu+9AGDAx0jwdiboNU=
X-Received: by 2002:a1c:3287:: with SMTP id y129mr5549039wmy.153.1556680752886; 
 Tue, 30 Apr 2019 20:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190430230729.31625-1-palmer@sifive.com>
In-Reply-To: <20190430230729.31625-1-palmer@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 1 May 2019 08:49:02 +0530
Message-ID: <CAAhSdy0rhD3cf2rSEeDWAEZc+Rf-5gRNZ5-w=WmFGpaKdBd08w@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Avoid using invalid intermediate translations
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_201916_218843_ADDB0639 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 4:38 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> This is almost entirely a comment.
>
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> ---
>  arch/riscv/kernel/head.S | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index fe884cd69abd..fc5534e9cf4b 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -99,7 +99,9 @@ relocate:
>
>         /*
>          * Load trampoline page directory, which will cause us to trap to
> -        * stvec if VA != PA, or simply fall through if VA == PA
> +        * stvec if VA != PA, or simply fall through if VA == PA.  We need a
> +        * full fence here because setup_vm() just wrote these PTEs and we need
> +        * to ensure the new translations are in use.
>          */
>         la a0, trampoline_pg_dir
>         srl a0, a0, PAGE_SHIFT
> @@ -118,8 +120,14 @@ relocate:
>         la gp, __global_pointer$
>  .option pop
>
> -       /* Switch to kernel page tables */
> +       /*
> +        * Switch to kernel page tables.  A full fence is necessary in order to
> +        * avoid using the trampoline translations, which are only correct for
> +        * the first superpage.  Fetching the fence is guarnteed to work
> +        * because that first superpage is translated the same way.
> +        */
>         csrw sptbr, a2
> +       sfence.vma
>
>         ret
>
> --
> 2.21.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
