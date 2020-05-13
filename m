Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7701D20BA
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Uz9nKjyzBvX3Z4DCax30kQ0R3wJYCQylCQFmxXOLegM=; b=JgvNtx8McJLtJD
	0/PsrgfGC5NOekZ7F56OGbC5Zn1G9Zw9u9RPouY1moMJeB8+9tdlITs/PaLVguNRlT/dEGcb4sAUj
	E4qmetFudO4iTT+W1WlDcIePX/Dkk9gEKPaomlMsAOWJ6+eCwEk3Us0afVraRdxB1Mj+JwuMOszl9
	Kaq3tNjD25IpSFrY2cxbqchWvx+Fb5kuH/8LCKXo6vJojP66OnJvXsk9Aq6ZNSrd+W3bbNXDid7zk
	vIDKRHfhkk9K6ILjvmop4rjYy0HrI7/f6of3AetRcGrCxo6Pq9hvA3AA6FQ+jlVNMNEdxXUSKDqX6
	PaZHc7HZWTLS73apl/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyiM-0007XE-RZ; Wed, 13 May 2020 21:14:54 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyiF-0007QJ-2q
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:14:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j13so1522408pjm.2
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Uz9nKjyzBvX3Z4DCax30kQ0R3wJYCQylCQFmxXOLegM=;
 b=WVkzwlpBwQjpu4x+KKlzKUJUU6cft6mHPVuspHWs4HG0R1rBhtrqOb5O5vlt8PYln6
 2iCnL3187fBHhPkag8APA6XfAAuU5MAJRN3xy1zWcbODx6G83mzzeWRLpXTCWjfso0tH
 Frw5Hfk2et37CFBlypU36+0RLd16EwZacEalMK2H6iygVeuw0QMVOUnOFrT3l4hI5bGr
 4aYTYUtvhYexvOW3jU96O1r/Y0Sfvqe8MbkU9KtW7kkyzePjxIX48fWg+HTzDn99cJI3
 BeTCz5rtJbpAlkwdMT5qnpPJUvj9H6NrYUewbUtYHU8DpxM9omIT7gjW8UUUj7FhbY6c
 K0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Uz9nKjyzBvX3Z4DCax30kQ0R3wJYCQylCQFmxXOLegM=;
 b=k+c7G7h5XHhGngvuiwXiP9M2mDKfvb48oUNFwxVz0TdyUH2teBEwnheldL3RKTMte7
 nsSkxshGqonMMfUO5rp6M41e9ph9unXb6f+Lmx7Mzvsopmj/w8bBHTBpbgXxvdtU2XuO
 QpeLqIJHk3XT3AhTE3pRc0B7e3tZHSINLEyuhXa7lbqkIk4pV1nLeKiwZh2YxGcLylhO
 yKBJGurYzQlHlo4YkI6ktmrf8q8mnDxAL2zQ0vHW97bWeA+swhh1ySxKBTxoFxSJXwy1
 vIlOL2MqeGupvaCsXY1C7L3Ilg64NDO5Npa1MJhns13wd6nZMX1Ckror1ok3Gz3nn1LZ
 PGHQ==
X-Gm-Message-State: AOAM531YwSE8bz/dRBjQ/vJ8sTAyJGobUe/qV3QF64H54ov4inHSY1zG
 WiK3rjgoQapC7YoWuKmU1Pcsxg==
X-Google-Smtp-Source: ABdhPJygjqB1SOHxlgUauEI8fTi3bHJPUt7nznvEgumBWYg3l+f++5tMOzqwHfbKe66LE1ZWKfaxbw==
X-Received: by 2002:a17:90a:21cf:: with SMTP id
 q73mr10395521pjc.230.1589404486290; 
 Wed, 13 May 2020 14:14:46 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id ft14sm16123887pjb.46.2020.05.13.14.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:14:45 -0700 (PDT)
Date: Wed, 13 May 2020 14:14:45 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 17:30:43 PDT (-0700)
Subject: Re: [PATCH 07/10] riscv: Make SYS_SUPPORTS_HUGETLBFS depends on MMU
In-Reply-To: <20200511022001.179767-8-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-0f72368a-209f-4659-a092-82e479b21a06@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_141447_124013_BA947B37 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wangkefeng.wang@huawei.com, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, hulkci@huawei.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 19:19:58 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> HUGETLBFS only used when MMU enabled, add the dependence.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 494e670520ae..d0010ed8e0f4 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -138,6 +138,7 @@ config ARCH_SUPPORTS_DEBUG_PAGEALLOC
>  	def_bool y
>
>  config SYS_SUPPORTS_HUGETLBFS
> +	depends on MMU
>  	def_bool y

I don't think this is the right way to do this: there's nothing specific to the
RISC-V implementation that makes HUGETLBFS depend on MMU.  That said, SH
appears to do it this way so I'm OK taking this for now.

>
>  config STACKTRACE_SUPPORT

