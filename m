Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E91A94E2
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 23:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFcrwSeq/l6Oo7xjODGUkyN//KIhnPo2FE4ClC8MZl8=; b=B5IcpONhbTQTY9
	UXGPJNYRZzdw8IeBQRHogkdAloCbkMzguQQkgfH0TEphErTplUgX6DvOyLwkebJRQAgHEMdHCzWC/
	sR55rbRVPKVjtkO47Oz90m2fb3UyBEmGfaUNvccePiGkM+Qnf6+eochBPNU0GXmREn3B8iMb9Wubi
	nRshJjEng2W8TTKWU3YpinM9MAhgPYm9ZLb0UrfhvJYoLnWZQ+x2L69lWGZflGMbv8Qd9IhMIwBIS
	0z80iDhxXsTBBKoL74Hed1iVO+T3LBzuQ6f9JSWQkjrjlKyq6nrQMEfI249RHnc+gksJQ51YKMcCu
	hXTU67Zyd9hP6zTQSiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cjQ-0001Hh-BS; Wed, 04 Sep 2019 21:22:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cjM-0001GX-Rg
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 21:22:22 +0000
Received: by mail-io1-xd41.google.com with SMTP id x4so47568198iog.13
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 14:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Nm692qk4LNmOHZMyj1jVHOcSSuFyCUnTdIF+X/Nubik=;
 b=C2B2dNYdSzXJxH9VlS6QeY936qliwaicI+yJm/i6LNpGDvf1jocEMbplE0QRaj8Gds
 Se1YBeenhuMe0CwSs5mRe41ywWpNYB/rAsRcPFh8q3C1YzKTOqqHk5+CLSG0De9gxYCd
 +IPILNkX8Tvli3QVTjOmjP87J1mQHRgWavjMSOn1Yu370HPoPgbWAG3qYd0+dk46TKDU
 +gtWzTEs3wLDGQloXGmVWAIj/TIA5MZXjpSVUY28J/OnDCBlWE8k5w0u+zktLkMZu+qS
 VomIe0Nsy5aT+79e9B1fx4NtX4bopyBv/MGZ+p7ZVZMdPieM7rwOUW1vVHPhP5aluLZ7
 74dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Nm692qk4LNmOHZMyj1jVHOcSSuFyCUnTdIF+X/Nubik=;
 b=ergs14CNRzWP7msBqbH5P11aqffTY9d1OyVQAv7cwNrtixN6fsVAiakc6bcksZ+pEZ
 VoejH7rsdax7pVUskA8gtIwOscDaAZvCvpTrJZDEJgClU4hwC+J/hAZOr3r6px2Wov1G
 iRv8uRXVx7PJFoI1hkuBDDQuT1fqlKOfQEcZ9sOTsSJUyqYtEOpevxBhCLE21jz97PtD
 kb9OddXuKgUVdqr6PYVYBmqQcCQSp/YbipSuCyC+2yXtfigrMAuDWUyacpp1vA1PBCap
 A1Pyzo0R/lV8XvyC1KxYdcAPK1sLENgXZjzc0im9lUKee9eq3mS3WDYV2XD7oM3OIAPJ
 ZN0g==
X-Gm-Message-State: APjAAAVeQC3izxygVi0by4nLKG+B9WBWO2Lmwfw9wOH4d6cGnfPIWXD3
 Tsad9ZZWbMUj8SmDRtcsjO3wPA==
X-Google-Smtp-Source: APXvYqx3kV34KAQ1WdbjpS3AwyBLMr0HwcwCXpIRa03VFOZwIm8yjheyzlOGwLq5YOPzaFPXtHoFRQ==
X-Received: by 2002:a6b:bc47:: with SMTP id m68mr102783iof.70.1567632139657;
 Wed, 04 Sep 2019 14:22:19 -0700 (PDT)
Received: from localhost (75-161-11-128.albq.qwest.net. [75.161.11.128])
 by smtp.gmail.com with ESMTPSA id m25sm109477iol.12.2019.09.04.14.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:22:19 -0700 (PDT)
Date: Wed, 4 Sep 2019 14:22:18 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V6 2/3] riscv: Add support for perf registers sampling
In-Reply-To: <0179424c5edc166273d5fe261f70b1a4c13a90f8.1567060834.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1909041420270.13502@viisi.sifive.com>
References: <cover.1567060834.git.han_mao@c-sky.com>
 <0179424c5edc166273d5fe261f70b1a4c13a90f8.1567060834.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_142220_927956_2BCD7FE3 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Mao Han,

On Thu, 29 Aug 2019, Mao Han wrote:

> This patch implements the perf registers sampling and validation API
> for riscv arch. The valid registers and their register ID are defined in
> perf_regs.h. Perf tool can backtrace in userspace with unwind library
> and the registers/user stack dump support.

[ ... ]

> diff --git a/arch/riscv/include/uapi/asm/perf_regs.h b/arch/riscv/include/uapi/asm/perf_regs.h
> new file mode 100644
> index 0000000..df1a581
> --- /dev/null
> +++ b/arch/riscv/include/uapi/asm/perf_regs.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

All of the other Linux architectures use "GPL-2.0 WITH Linux-syscall-note" 
for their license for the perf uapi files.  Could you please change this 
license string to match the standard Linux practice?  Then I think it 
should be good to merge.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
