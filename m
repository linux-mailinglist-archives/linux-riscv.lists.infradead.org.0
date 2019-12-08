Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9331160B5
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Dec 2019 06:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z9pquV3bCMWDZGt16luo26JnnZC+AO01g0+9zHilts8=; b=ko8BTTbNHhkc1ibQrctj6StnM
	YrIMGZnxd8cONnoLSABDNqlhO5vlF4mtXdtHyq7Vpm0tVpubDnsyZ62IHuGpSxQkDH0ctlvo/0Cst
	Lgi7/cPfzovwws0zXc2z/waLTu1/nRPRaeFIclAtS1CMXClTZpSS9ld2gl7KrEP0fhb+Dc/x/q6/I
	AGusG6PrMshd74TNoLQBwT2At79QI5hmtZQUHFuBYOVdxqwytXyEHafKYIYwHiqWt1nK3Rbh7U+vi
	TuNNcKXZR0sq8X+1Ri8XolesXGzsBPKxrxwnglCnP3QKSiMS/IUgRlfiUuaygb+MBjV1sxPvaz/Jc
	0iCOMbWAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idp6g-0001t9-4m; Sun, 08 Dec 2019 05:27:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idp6c-0001si-OE
 for linux-riscv@lists.infradead.org; Sun, 08 Dec 2019 05:27:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so12253746wre.10
 for <linux-riscv@lists.infradead.org>; Sat, 07 Dec 2019 21:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z9pquV3bCMWDZGt16luo26JnnZC+AO01g0+9zHilts8=;
 b=jLkzEE1Emr1PE83CAnq1AgI/inVp1i1XP/A3KxFtGeJPzlHjql/AW7qbDdoJ6RkwP/
 M/blOWuFrHwTqVu0HD7XU6oBygARII63Io7FMuwFIxSBZNWXQE31nohsv70D5gUG4c0i
 lNvmgd8v9iiNwDU13GC2k+iVIOlGqM5ZLBBwFS0BOKt6JCa7on8rMz9kSlcs7esYIHgo
 fvsHYFEuxDFHfp+pl5oEMOHRNsbovOC8155cnN2xpFkU2AfJHF/8Ko8IyKuo7p2XDSiq
 71OYrCMOENeHGiW1mvRDeWIrxseD+Z++mGviUs4LIgYBh6i6l3P4WQsYall4BQaOHbjs
 zn5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z9pquV3bCMWDZGt16luo26JnnZC+AO01g0+9zHilts8=;
 b=hcuE/KeSdEqGselbBDmmwu8Wjj7yCCoclQwju8IcpDRFq38/0G5KX6vVWUUyLBNMRC
 UT/AP19T53h3ApC5WDuzuFzapaiLvdjww/pwwypbec38UHlvidzY3fMxhHu5DLssVKp+
 x//Oa14LodxKmos+W9igXCSDb5kBzGqawzUz46dgNv4t3bjnmC1yneOVgqckRnESEGpm
 pTIujMbteAlxt3U2Bzh0PLo465O2f2C/4TrjFfE3vG+FEuLmHeL4oACJtCG4zJhafN48
 ppP6D9XRLDrojtO8cpJSPdmp4L5fCreIwSST50IVhNtD2hLImoY61mjTVnN1fhCt4kL+
 pRFg==
X-Gm-Message-State: APjAAAW3Mg33khOqf9JgJwGqmEi5PvHCvhEYNnl8KsSwgx2uCCwUbRTs
 JwY7xu6oGYv0O342kYd3ymsGM3r/kajR7Y+cPW79Lw==
X-Google-Smtp-Source: APXvYqw49COcOiWILG4CPx3KrlSGO4gmMkeSr4gqepLQqQqL+tWII/HFy4Sqica4vGqIHrcRGxBt0cpTksMJcfg5rEs=
X-Received: by 2002:adf:d850:: with SMTP id k16mr22791152wrl.96.1575782858366; 
 Sat, 07 Dec 2019 21:27:38 -0800 (PST)
MIME-Version: 1.0
References: <20191207212916.130825-1-olof@lixom.net>
In-Reply-To: <20191207212916.130825-1-olof@lixom.net>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 8 Dec 2019 10:57:27 +0530
Message-ID: <CAAhSdy0ERFToCEPtpaV9WX=RTyVD_=2GKutE7=cLnYtY-dU-OA@mail.gmail.com>
Subject: Re: [PATCH] riscv: Fix build dependency for loader
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_212742_812808_CA373F58 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Dec 8, 2019 at 2:59 AM Olof Johansson <olof@lixom.net> wrote:
>
> The Makefile addition for the flat image loader missed an obj prefix.
>
> For most parallel builds this worked out fine, but with -j1 the dependency
> wasn't fulfilled and thus fails:
>
> arch/riscv/boot/loader.S: Assembler messages:
> arch/riscv/boot/loader.S:7: Error: file not found: arch/riscv/boot/Image
>
> Fixes: 405fe7aa0dba ("riscv: provide a flat image loader")
> Cc: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/boot/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> index a474f98ce4fae..36db8145f9f46 100644
> --- a/arch/riscv/boot/Makefile
> +++ b/arch/riscv/boot/Makefile
> @@ -24,7 +24,7 @@ $(obj)/Image: vmlinux FORCE
>  $(obj)/Image.gz: $(obj)/Image FORCE
>         $(call if_changed,gzip)
>
> -loader.o: $(src)/loader.S $(obj)/Image
> +$(obj)/loader.o: $(src)/loader.S $(obj)/Image
>
>  $(obj)/loader: $(obj)/loader.o $(obj)/Image $(obj)/loader.lds FORCE
>         $(Q)$(LD) -T $(obj)/loader.lds -o $@ $(obj)/loader.o
> --
> 2.11.0
>

