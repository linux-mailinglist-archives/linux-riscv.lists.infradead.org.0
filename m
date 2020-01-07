Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44D13242D
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 11:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=55zGQCan/BVSbUS/lERboFokfvk914OIASgTIrIGSMY=; b=DHgJlE1UA8zK+JBkyYOqf6GoW
	rSP1/yB61eu2NG/Dp0EMN4iZS3GrmqU3U3N2qUo8qWzQnl6gxXR7dJ6otQVvTa489klfeoFbp4dvZ
	6THV13jqvTeHOSd+QwjkAV43Wkerr75ppJJyo5aSEvyng20P4HVM8OPFlvH7Hdfl77hT0uruS90Ba
	attOTh5h2waI4aZxaGvlmMhrTS0ZjClt0dSi+JsdlPidm+kFjLvjzqCPVPjBOE0pRsWl901bTPzc8
	ApoSydk85r3VSPEQNWnIZL3G8aiMSJMAe8XBrTrROvqscZbslPwjxZhYWg1qFB2qG+HltF2bm0rHa
	PlRymAsBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomV5-0004lU-5T; Tue, 07 Jan 2020 10:54:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomV1-0004k9-3P
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 10:54:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so52129656ioi.13
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 02:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=55zGQCan/BVSbUS/lERboFokfvk914OIASgTIrIGSMY=;
 b=m8glgmWU2bmFV6XaqzDbxxkQrTNyU77OUM6rzJbL/F3d/0w1TqQPZBQQrWiR8htJ+k
 OcNVqaztp4ttvnYPhLkqGNxuPACuxfUKt/JHxyelffdOzpVzG6+st6BnhvCHA5qyg+L4
 nzJYmQB19SSbWd9wkxe3IIZjuFjIB8KuGz1RyJS7YJF0bYbdXC9INUs7Jda9GKlMaUM5
 k5Gr2EnlrBmuQOe+lZZTYm9vkCIx+IGUeebJk3XtmhTqKgg/454E2eqV7ZUXKZ1mE28O
 IUECGaZQPn8tnfm6VltpcziwIDySAib8KPTJvcCjvw8pTMZeZHSsVv5syQeKqN8EuEv1
 CSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=55zGQCan/BVSbUS/lERboFokfvk914OIASgTIrIGSMY=;
 b=eg2n28fKsih+R62aYNRYQsNRGiSvWV/fjOOGpBUxEbWVaBNsm5jJXAt+cm6ffnaSMo
 gk1WaXKPW+xEnf+6Y7hys/68oRGickXZRWHtkDobSY38d1CSk0scjQZkkfLM9TcpaAKp
 ly5ag3TT9RoDdpIF5GMVy0qsmbE89AoMnV9y4/2dzyT+Pks7tp1gtcptmistQkmfaAht
 q4BAuw7kaOuvB+VqumpGuo2ezo5epfft6IrMCYg0SggXblTVO/m/Muc8Lm9agJi6x3C5
 nvQcq+8irvKlPebdO/FpnZS6Gb025xmIkhQNhd5m6E1dm1LiUJspRMZanO+f7kgaKB8J
 ejxw==
X-Gm-Message-State: APjAAAVvbleKxvuwRzQyViTWIYZqq3f+QSeJgpc0hcjBdj/crnR7cP71
 egEqpsK0LE5V9oqsF18zTYK0xQ==
X-Google-Smtp-Source: APXvYqwYyM9UchL19MH04zd3Ziizjw9GGG1gYwasSH5L+3DLLbAgxrJCWdBov2MEAG5TiIraC2giIw==
X-Received: by 2002:a02:c9d2:: with SMTP id c18mr83648393jap.66.1578394448585; 
 Tue, 07 Jan 2020 02:54:08 -0800 (PST)
Received: from localhost (67-0-46-172.albq.qwest.net. [67.0.46.172])
 by smtp.gmail.com with ESMTPSA id r17sm24809102ill.27.2020.01.07.02.54.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 02:54:08 -0800 (PST)
Date: Tue, 7 Jan 2020 02:54:07 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH] riscv: to make sure the cores in .Lsecondary_park
In-Reply-To: <20200107091618.7214-1-greentime.hu@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001070253000.75790@viisi.sifive.com>
References: <20200107091618.7214-1-greentime.hu@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_025411_189643_625BB972 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: greentime@kernel.org, linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 green.hu@gmail.com, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime,

On Tue, 7 Jan 2020, Greentime Hu wrote:

> The code in secondary_park is currently placed in the .init section.  The
> kernel reclaims and clears this code when it finishes booting.  That
> causes the cores parked in it to go to somewhere unpredictable, so we
> move this function out of init to make sure the cores stay looping there.
> 
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/kernel/head.S | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index f8f996916c5b..d8da076fc69e 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -217,11 +217,6 @@ relocate:
>  	tail smp_callin
>  #endif
>  
> -.align 2
> -.Lsecondary_park:
> -	/* We lack SMP support or have too many harts, so park this hart */
> -	wfi
> -	j .Lsecondary_park
>  END(_start)
>  
>  #ifdef CONFIG_RISCV_M_MODE
> @@ -303,6 +298,14 @@ ENTRY(reset_regs)
>  END(reset_regs)
>  #endif /* CONFIG_RISCV_M_MODE */
>  
> +__FINIT
> +.section ".text", "ax",@progbits

Can the __FINIT be dropped?

> +.align 2
> +.Lsecondary_park:
> +	/* We lack SMP support or have too many harts, so park this hart */
> +	wfi
> +	j .Lsecondary_park
> +
>  __PAGE_ALIGNED_BSS
>  	/* Empty zero page */
>  	.balign PAGE_SIZE


- Paul

