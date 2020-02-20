Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912D516575A
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 07:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LXBy0Uexw62kag86kt07J2cNSFL92+mtSCX46spkX8=; b=i6PPeXDax9b/6MWDmYiEQrgqF
	FUWq8w/zDQ+q+iY78W0kxd0rNr1jYxvGfZ97bB8dB5vliWzsgAZdqY7TbCfgrBkixi/knNV+hg4ad
	koMqYttJDO+QWbCxaZMNkmoU/yFQi43XXfVRoLk9nt7AUrtUJiHK5AjNaBJKJZKSGrU6MMgtDMqUb
	jsyscL04aek5mDyJfqbbwjdm6R4xTz5/LzytkahMoWaJxBaQ28Kp+8xTQU5GX9Pc+pr8iZnjBTazM
	1XoRx/Ocz5jDkf50I9JDkTtRQRT3sPRgfbplcraUj838sbqLpPbf7ioEOzgIsPMvnk759Rmz6lT71
	ePwEIxiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4f54-0001So-C3; Thu, 20 Feb 2020 06:13:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4f51-0001SK-Lo
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 06:13:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id t23so694057wmi.1
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 22:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8LXBy0Uexw62kag86kt07J2cNSFL92+mtSCX46spkX8=;
 b=MruqT/lLwSAY/zZMkWPYyZnUdokPOkKShNCtKtMf/VykASByq7CcqXkeJtyAFtaE9d
 mO5avU+Ye1J1rSsVQYiZYzVTh2UcMw4oSNd88QTH2ZnWcqW0y7X903SrT2LBN6Ueo7Ak
 O5/k8vc51viBHlk9Pst4jGvSCHEng4S2zFufuqaWQfdgxgF9RbTM9i1kKH49Pq3Jd9rD
 axORqzyd3aaOYT00FJIWvjhDCfrUDCcjo5qiuTg6N764cg04CVA5hMMv2EwNCak1jiYg
 rYWGXwLF4qexYdwemsf2asYFk6VP4ARRR5pqJKviz3lLKi4EhKWXt2ktUm+WEMyDy1sq
 +7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8LXBy0Uexw62kag86kt07J2cNSFL92+mtSCX46spkX8=;
 b=JIW02MAgTCIiUQxiZ4IRptUOsXrZsRxzyzxdFRGL1UfrH9K7XvjIHwYjX7eh84HbfO
 7Js6476A03LH6FE8qELJv4uzGTEJO5+OG+XmZvf9Um3LTa+Vt6azyPLk6JczW1U1DxPF
 0Sr4pSC2QO/jwH8vPE77CFUTAgbrm/tS/HGm//CNmbv+JXad6C39bBilzYlR7exJZOUU
 liQBJY34h+lk95dU31ICvLb6m8uk6cY5XRtyBy0kaqDkGmk6aiDpxn1Z6tAdpZepv/gi
 EDV0AHnUchi9KtxZ5rfbMAoW0nnWhMWcLyIXdqt5HbxisDlZUGmMeEjXYSH3mO+CGQq0
 xdxg==
X-Gm-Message-State: APjAAAW9utknsMr97HH6+4GWPc7x0S7JISyK4GjxI/9laL2P8kX3BZoo
 oeN9tYIMOAIBovHOMFPyTsuFulDfV1w1lK1EB18GE1PR
X-Google-Smtp-Source: APXvYqzeQceJiDvtYYc92q/YMWZtyrFqJ1ahaVG9IrTJOyiVw37zCRGbeNeYXxtFFERU8m8iCnxSB/q+gcv23p72kzA=
X-Received: by 2002:a1c:1984:: with SMTP id 126mr2342646wmz.78.1582179175373; 
 Wed, 19 Feb 2020 22:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20200220061023.958-1-alex@ghiti.fr>
In-Reply-To: <20200220061023.958-1-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 20 Feb 2020 11:42:44 +0530
Message-ID: <CAAhSdy1=xwzcJuKtyyv_d1fL6=v2kB_rq2F06081Bc68WGXH_A@mail.gmail.com>
Subject: Re: [PATCH] riscv: Use p*d_leaf macros to define p*d_huge
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_221259_775018_0F011093 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:41 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> The newly introduced p*d_leaf macros allow to check if an entry of the
> page table map to a physical page instead of the next level. To avoid
> duplication of code, use those macros to determine if a page table entry
> points to a hugepage.
>
> Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/hugetlbpage.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/mm/hugetlbpage.c b/arch/riscv/mm/hugetlbpage.c
> index 0d4747e9d5b5..a6189ed36c5f 100644
> --- a/arch/riscv/mm/hugetlbpage.c
> +++ b/arch/riscv/mm/hugetlbpage.c
> @@ -4,14 +4,12 @@
>
>  int pud_huge(pud_t pud)
>  {
> -       return pud_present(pud) &&
> -               (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +       return pud_leaf(pud);
>  }
>
>  int pmd_huge(pmd_t pmd)
>  {
> -       return pmd_present(pmd) &&
> -               (pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +       return pmd_leaf(pmd);
>  }
>
>  static __init int setup_hugepagesz(char *opt)
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

