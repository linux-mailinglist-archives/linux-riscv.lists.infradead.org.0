Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92701E22C7
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 20:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCLSVraGLS0dYG1KC5mLjjR+XnDfoU8ftL8xmuzXdTQ=; b=bb86LeANo5HSeZ
	iaSD5JOWgzgIH2izBBMDun62jVh+59vGX8yGgJRG/2Tubni//2WNG/1ZAvFMyLtzumEzI1ZEWo6N4
	1rVhadd+eTDgol7M8KYscrnVAaLT1/WNJWx8SzxKGwdKHY1v5s46wNC+FbJeh4ZT84jr5VdH6ZcEr
	6rKmlEHXuqNOSapJDKz/GsoQYubyhzUJ1434M9eGg2O15aMTbWyh1loFQ9TeCe/NECenS2AN4mRub
	ZKSsnkX1b0suudWF1bOLRSU6fXSc81LcQrL++VKu1nlmj2pIrWToTB5JdCSo6FVybk1wzy75tXXsj
	SVN4iqYUm8csXTXFQ7wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNLme-00074P-5u; Wed, 23 Oct 2019 18:55:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNLmb-00073z-Jc
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 18:54:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id p6so18048629iod.7
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 11:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=12QbW3key6pkPLRePaJeG2+1IWcL9FQrUNpf3RuSKSQ=;
 b=GDUVls0nbXaYTbmTFZL/RVapwYhF4nk0yOpUXO8xXNki35UwD8vLzY6PEIH775b/eV
 VNCdP2nsxX8S0Kq9AO5cvrLCvrv6qM5hrppOxC2VWCtuWUDk3Tzlc7FqwI4db6+ifuoK
 +vWrow2Di4hCVAXJK88uEH0ux41umg45NcID2sXhUHxpGF9d3PKcR/IEcxfv1YZIF34t
 7u1ujeneJLCnj6GSeuT5nxPZuW5/eJJvvkYXuoON8ADB5dXNHu2LntShneO+66r6YszK
 wAKsFHgpvpJiRLvTUho0x12PR2Mq4iUFg1Khv0PG7Si9RCFyTYD1/vzOEMRqWYMMbEF9
 fg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=12QbW3key6pkPLRePaJeG2+1IWcL9FQrUNpf3RuSKSQ=;
 b=pT13Zwix1W3Uk8gaUdp0z5rsxbB6Eb09UbB9Q6NMGZaJE8c7/k7UA0EIa0IH2oejYE
 CX6epGIc7R43dC+BkdWoqHKHh/qOsrXrYhspGCKd/MBI3q2Rmn/eSOw0JXOScSBjn24e
 9e96j3DjTl5FUOoQ+6biZihDZvAz3KG0TF6yO46H/9e/InPhL/wCwtIPwdK65TW9gqZ7
 ZyBiqgyK4KnYAnSFcP2f23eq+S/MHu1bg0GCyp8+7XWV/JqrhRb5HCjHZYm3H21miAaR
 kS3gZeTfH1p/JVT4kFhumWJXhBMK3FdVj3lJtygUyafjDS+DxRaWcw35NcLyJFWXytcV
 0yLQ==
X-Gm-Message-State: APjAAAVXkUrU6dsMyCpqqrasoxA+axX0UvdUulMCGDvbPIyycClJ4Yp2
 ppCrdpJe2VeFJPGrLi0DDwrQhg==
X-Google-Smtp-Source: APXvYqwAgcDxjS3FQfiMaYQ2W8py38nxP64qtmVkcxcVPl8C/rXsYd/CoOC3NOujys7o6Ep29KpLRQ==
X-Received: by 2002:a6b:7942:: with SMTP id j2mr5108252iop.161.1571856896420; 
 Wed, 23 Oct 2019 11:54:56 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm3791776ilo.70.2019.10.23.11.54.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 11:54:55 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:54:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
In-Reply-To: <1571847755-20388-1-git-send-email-alan.mikhak@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
References: <1571847755-20388-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_115457_789293_5D4FE9D9 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, maz@kernel.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, hch@infradead.org,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+ hch

On Wed, 23 Oct 2019, Alan Mikhak wrote:

> From: Alan Mikhak <alan.mikhak@sifive.com>
> 
> Modify plic_init() to skip .dts interrupt contexts other
> than supervisor external interrupt.

Might be good to explain the motivation here.

> 
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index c72c036aea76..5f2a773d5669 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -251,8 +251,8 @@ static int __init plic_init(struct device_node *node,
>  			continue;
>  		}
>  
> -		/* skip context holes */
> -		if (parent.args[0] == -1)
> +		/* skip contexts other than supervisor external interrupt */
> +		if (parent.args[0] != IRQ_S_EXT)
>  			continue;

Will this need to change for RISC-V M-mode Linux support?  

https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/


- Paul



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
