Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ECF734B0
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 19:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9nBuvFw6tV9CjxES9bDMHjxWTpPiJfI1V1Fav8dpzw=; b=JbOr/klYxYlR9x
	jhIGc68GzSLV7to+sdh7O2kwCTGuedRwoLMya3k4wcb7BopHxjiXyxjfMMaC8EUb4Yo6C3bXvc0NX
	KGG72Pzp5NuAfSnnny6+J5vIRn1NjXVdK+6x1I93cympUGjSVp1U17QRN+jk05ijmTr5Zc6LhNdaO
	IBPtw/kGBIDuBbCH6OoUHOMVrKNiLB+777Cz7raIF3ViW+2dBvN1pbHl8tto0alA1KWruvW/m4W8c
	cgl9jgNczJkiJRfDicNGzQea/It1FuK0tkspz/U5HlxOySzS+38n8tuUpK6IBl2R5bagiLfs4ghRI
	LCiCVily2HN1QA5wmuVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKns-0005NT-M8; Wed, 24 Jul 2019 17:11:48 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKnX-0005BP-LV; Wed, 24 Jul 2019 17:11:28 +0000
Received: by mail-pl1-f194.google.com with SMTP id k8so22261419plt.3;
 Wed, 24 Jul 2019 10:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ITF8T/T4IRmGXwtRff4SYZQW9zAOexuz5C2yXEWqdiw=;
 b=FPWb9H92BtSELvERavsb0wcIkW0GN7R34s+zep29X/w6uQCSQnF57FoMemDaZdj83n
 ciTlay1Id9ssbJcROQOlQHD2AWlhbRVteOcc2Ns7y1HHQKF8B9qQNl5hhx8J9SO3HI03
 SXXjPZ0hQJqAkFsGYHlSW3Am107w89seAZaxbyR+0WX8L91lkP5EKOlvfO3R5OMScV2D
 Kz6MqQ+4tFMeETLS+7QxIl71m8ZTdnaA4d2peYtqBWr9M3ZXPDnWkJu0oAyvC3bXUU/7
 KoDE3paLADdtoVWma12+IfHYeRw6pRe23KAtdinbx+v1G2/hb78CQm4hPba7llKgJm/Y
 sQ7A==
X-Gm-Message-State: APjAAAXhpUNwukcUQbW6VLjI4+WUeUujf1+vaVcqqClzyGPoe38wl6hn
 W5FHIVnI0bqeFFkTEnjAfLLwyKb0
X-Google-Smtp-Source: APXvYqwoAqWJaD8G9kpqywHtKCy/l+Vyxr3KKHtKTaJVbqukgpdEilFdeN9cgx3TW9bJG3WUBlH/LA==
X-Received: by 2002:a17:902:7488:: with SMTP id
 h8mr12079513pll.168.1563988285727; 
 Wed, 24 Jul 2019 10:11:25 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id h16sm51887353pfo.34.2019.07.24.10.11.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 10:11:24 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BEECC402A1; Wed, 24 Jul 2019 17:11:23 +0000 (UTC)
Date: Wed, 24 Jul 2019 17:11:23 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 05/14] arm64, mm: Make randomization selected
 by generic topdown mmap layout
Message-ID: <20190724171123.GV19023@42.do-not-panic.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-6-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724055850.6232-6-alex@ghiti.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101127_708520_6202E948 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 01:58:41AM -0400, Alexandre Ghiti wrote:
> diff --git a/mm/util.c b/mm/util.c
> index 0781e5575cb3..16f1e56e2996 100644
> --- a/mm/util.c
> +++ b/mm/util.c
> @@ -321,7 +321,15 @@ unsigned long randomize_stack_top(unsigned long stack_top)
>  }
>  
>  #ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> -#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
> +unsigned long arch_randomize_brk(struct mm_struct *mm)
> +{
> +	/* Is the current task 32bit ? */
> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
> +		return randomize_page(mm->brk, SZ_32M);
> +
> +	return randomize_page(mm->brk, SZ_1G);
> +}
> +
>  unsigned long arch_mmap_rnd(void)
>  {
>  	unsigned long rnd;
> @@ -335,7 +343,6 @@ unsigned long arch_mmap_rnd(void)
>  
>  	return rnd << PAGE_SHIFT;
>  }

So arch_randomize_brk is no longer ifdef'd around
CONFIG_ARCH_HAS_ELF_RANDOMIZE either and yet the header
still has it. Is that intentional?

  Luis

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
