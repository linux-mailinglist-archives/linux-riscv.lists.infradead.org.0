Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6971175264
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 04:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KYlGv+qa38/0hm1EdbcftOoa0phay5E3DEbDcdHqiqc=; b=k5z+prRis14exSf+s2gbU5x4J
	r9L5wkxgVGXVN8+Tn3SaEyppX07lqXh+VJ9ZpzPjRR7zuIKuIVOxfMP0Ei+KCvkzpYRiVmGyGYS0J
	KFy0YFJ1lhvPepMYN7AoWww9+rirzeYt8qUuyGYZCSfD7GSwHtZCWJcKibX7l9p9AFAn00Vge0Nsm
	vm4J5eoBgIPrrEndXqijOdoJPQkNCWSsmCwZ31A+453VS5pQiHtg8jgXuzrZCNMy3deqT3JP7CZvw
	rsGQ+2p/l7z9rSXnaCpqXFxvyEg8uesB4qId3YzS9Rh38ZdJXb4ihAiOeM3Y8C2K0Gw4jYcwCgBAR
	0uLrCj/Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8c4x-0001Ei-Au; Mon, 02 Mar 2020 03:49:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8c4u-0001Dv-D9
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 03:49:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so10713674wrt.3
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 19:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KYlGv+qa38/0hm1EdbcftOoa0phay5E3DEbDcdHqiqc=;
 b=N0daixAtB8YrFBQB4W8h71U3eU7SH67jheuBRmI9kGgyZOsguPFIgOzqw+AYgNV1aw
 uEuaiqIVEOCXtvedgDkFByKirb1yCvt57hl5yTMW2FKeKwxZ6ol1fOFE9WAAFP7a3d6r
 cnfk8C5XnEkDaoBAs4TE+n6G4DQI7Isf3geEwEmEmULLCST4TEleWHiJNqSev9kcaVX8
 y92qp+FiE0WgarZS5798swL330+cWgbLfQcB4LF+Yjbu3TGqxaDyKs6wfZ7Sy36Qkfz6
 Of6KSiRiorTIbxJKvK4SFwAc2PfFnNfkTZG4FwdrR27pbjdzJ3dv768dKtAYxFB2kOjD
 C0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KYlGv+qa38/0hm1EdbcftOoa0phay5E3DEbDcdHqiqc=;
 b=FsaF0UYVpQYOBNQvn/Kv1cgqIc+v13SyyRTSleIscQR4vgsdWFz6GfAlzW6bRSlT01
 x18s1tgryiL3pWC+XE8tbOELg5k6arsnv3M52UCBKWcsPbeGkAUYUIMhRm4LGpMsUchA
 GBJdiw7XkroiQUv8oG22usjRUwmAXZjzraIqtVh5IHjJZfQLvdACTO9G/Kb8h07tuMDo
 n76YPjrEODsX0huN422c28xivnd2KYX+couifrijLcP50kjOyfg3hhCiPh0vIMRuU1oD
 VrCp065BDupgP4X4ZRCBelLofzzZJ/JVKJtYFADJUaFjSc/q7nnlzz0/zKt27cOfE6yV
 zukA==
X-Gm-Message-State: APjAAAUNZzSnCVanSaTk3HYH0iOMHeJO1CWC/5Z7uVaCoZiuPikAjD/L
 4Ka76GdtiZF69oIdm82VgfKl+KJWdGfjh1EE6VvIPA==
X-Google-Smtp-Source: APXvYqxJ5AwItaG2AHFvFibSyAI9WJ/gwyMjkRQnB2JrIfz5VYnR3DS/FWpP8lu5ZRIuejRvsBRB7cUIxF0+zlv4neM=
X-Received: by 2002:a5d:4b50:: with SMTP id w16mr19366924wrs.230.1583120949635; 
 Sun, 01 Mar 2020 19:49:09 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-3-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-3-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:18:58 +0530
Message-ID: <CAAhSdy1eAfuaBo-KG=2pb8jX4O+XdVy4hNm0kaoo6b6kmWQYPA@mail.gmail.com>
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_194912_587373_570EE088 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:04 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
> a nommu kernel. Since the sparsemem model does not make sense anyway
> for the nommu case, do not allow selecting this option to always use
> the flatmem model.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 73f029eae0cc..1a3b5a5276be 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
>
>  config ARCH_SPARSEMEM_ENABLE
>         def_bool y
> +       depends on MMU
>         select SPARSEMEM_VMEMMAP_ENABLE
>
>  config ARCH_SELECT_MEMORY_MODEL
> --
> 2.24.1
>
>

