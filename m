Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DF32F101
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 06:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ziMqr/ncm7EV3SspE8V131WmnF/r6Vxmif6axt5EIm8=; b=O0ICsiwdAhzc4RAeT0wwUbAmX
	oqg2sYTAQybCm6QsTZ18xBArP7JlaxCI/ePlQDzUh5Xq4l5ecI5R+jpO0Wu9T467GiyqdTq7h7njP
	GUNNLDO1zt3PnlW1vf4d/i2ZDmFkdvVp5HVjH+DCzAjbkamtNv4Bnlxqfq7nmlMaAL7wsqsADKA13
	gzyUi8BPNGC99MNcLDttJVFUhalV3ayfVuCcbBwRw4mfyuItw4PJLdCm6Ie26mfg3CiKOpkXZ9Jaz
	/XxmvzBg/DgideZZWsz9XrFM29mTTPBCN6J9tOd4LCwGku4yLOFrfANnbaLCU7R6AbbQXF6jsALXO
	ua5JP7eRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWCNZ-0007Eo-44; Thu, 30 May 2019 04:09:25 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWCNV-0007Dh-B3
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 04:09:22 +0000
Received: by mail-pf1-f195.google.com with SMTP id u22so3067769pfm.3
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 21:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=RgBvtow3SG/L3onZEkvF3GT1l11iLnZpHBpHe6+yVVA=;
 b=orWyQTCe8GIYzSasF51LUMq2gH9uDW8WTZPrury1NIjyubxiH3/NLpAk4ylCNZFaqr
 awgIKLcQuf3cS0KO4lehMFD1f5OOXTctrykoB+d55OktD6PNqt9yZEh3NrikLMcWnoRk
 7Xuew8ePG5X8EJQ1T+JgIfnfie+4LKmlt7V12LVLI6/WKx+qPiHuHDXhIqO0X+3bRYjb
 GGeGdcuw5t+lLHp8lKUl98ziqFYleePijSWuJJLVdfhNGf2pNo/ycEQzpRHLiCRLvqEy
 jpRjGt5b+JQyfwQRj4i/8InqSJvdQS7jR7l7+n5rKPd/+aJK3CliwHxue3QyDy6jj+pA
 lL5A==
X-Gm-Message-State: APjAAAXqx7T0lFFrlwTvgoc2SdtBhf0VPqJkoaPq2jPTzp7IljGx2A/Q
 iS7Y9+HlzzlWxWayW23zhR1Idyem/wZ1Mw==
X-Google-Smtp-Source: APXvYqxL7nHH1tWDIGiRjh1quoIV4ZyKReZOGaf2heGTQIPnVWf6k8qKr5CbyLKzE+36RS6bp4/Rng==
X-Received: by 2002:aa7:8e46:: with SMTP id d6mr1664198pfr.91.1559189358490;
 Wed, 29 May 2019 21:09:18 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id v93sm1035350pjb.6.2019.05.29.21.09.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 21:09:17 -0700 (PDT)
Date: Wed, 29 May 2019 21:09:17 -0700 (PDT)
X-Google-Original-Date: Wed, 29 May 2019 20:42:12 PDT (-0700)
Subject: Re: [PATCH] riscv: Fix udelay in RV32.
In-Reply-To: <381ee6950c84b868ca6a3c676eb981a1980889a3.1559035050.git.nickhu@andestech.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: nickhu@andestech.com
Message-ID: <mhng-681a0d18-f477-4e76-ae16-b64fe7265ec4@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_210921_379580_1F5E3DD3 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: green.hu@gmail.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, nickhu@andestech.com, greentime@andestech.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 02:26:49 PDT (-0700), nickhu@andestech.com wrote:
> In RV32, udelay would delay the wrong cycle.
> When it shifts right "UDELAY_SHITFT" bits, it
> either delays 0 cycle or 1 cycle. It only works
> correctly in RV64. Because the 'ucycles' always
> needs to be 64 bits variable.
>
> Signed-off-by: Nick Hu <nickhu@andestech.com>
> ---
>  arch/riscv/lib/delay.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/lib/delay.c b/arch/riscv/lib/delay.c
> index dce8ae24c6d3..da847f49fb74 100644
> --- a/arch/riscv/lib/delay.c
> +++ b/arch/riscv/lib/delay.c
> @@ -88,7 +88,7 @@ EXPORT_SYMBOL(__delay);
>
>  void udelay(unsigned long usecs)
>  {
> -	unsigned long ucycles = usecs * lpj_fine * UDELAY_MULT;
> +	unsigned long long ucycles = (unsigned long long)usecs * lpj_fine * UDELAY_MULT;
>
>  	if (unlikely(usecs > MAX_UDELAY_US)) {
>  		__delay((u64)usecs * riscv_timebase / 1000000ULL);

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
