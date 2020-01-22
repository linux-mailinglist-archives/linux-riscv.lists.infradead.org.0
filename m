Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09732145CB0
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Jan 2020 20:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XE7/hAeYrBhQF6sVXnevM16644WLVXjiFoETVe+XjZA=; b=bfvJKlHtCHOhBKsSJMfJyhXIe
	5SMaUyBxD05uiUNPbFVzmoQME87ZOY6oMrpkUZ0WDCfGK+vbLtyuMIOUJ1xH9XMM/hy4tdS3MZh0v
	Mvf5iyUlzbRl+FyYbwilfqDc6+87eXkQ5JIlaKT2iTX/6fBJEAXKHUgHs+gDomRwXaNi87IQBJXXM
	c0D+nA9mOQecx9ezC2XHB/9RIr6IW2j73bPHni/dmAdgzFmvurXDSLDxu89GKSSEH8K/5aE3job3T
	Fgd/2ixkocx7h1Ypox2BDeE/jJwAtZTlzUtu6CHg51qxsq3T2AU/aXAS+FQlB9m2+KcfOVjNyNrDI
	biJvODR6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuM0s-0001KY-Mu; Wed, 22 Jan 2020 19:50:06 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuM0o-0000ra-QN
 for linux-riscv@lists.infradead.org; Wed, 22 Jan 2020 19:50:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id d15so526666iog.3
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 11:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=XE7/hAeYrBhQF6sVXnevM16644WLVXjiFoETVe+XjZA=;
 b=bZ/wRpPICWfuWr1XYJvti8fIxacyBeuZmg7Ir8c968UixFzMtUPiE5uK3FfretQkg2
 l2J6Acl95yd0fB7FE+IaJ7UZXkRi5ainsgCeYRmebGnxE9xl6xY7sKLqLKRmCJlvDgMb
 sixoCcIv1vz6OXcl0hAd192DNDU6TVaUGtTUa3WJUrlpIqaWTl4tNCmiIAwK9MxIkfb3
 mPYTBm1BIMkGYLvka7lvpBfLYQPrQN/GGFZvAAMQVWzanxt62KIrMZVRb4aoxh/2tw1R
 n4KPdAhv2Fa5MLN8IwsU7KiUxrVeu5s0aFDAWjcbviiU1KuG06KPIDjgyDn8Zo1Fvqr4
 /yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=XE7/hAeYrBhQF6sVXnevM16644WLVXjiFoETVe+XjZA=;
 b=ii7psS9uaPVuf+og/iu7N+jQpTKvcbf6PZiSDLNsDyji7obiNyjKpOCdD6RAfiazIF
 w31NIQkobPhCiqxRIXgCgfhuK4VTxZi1Tq85u88R+JaBcRcIbewP4oL3UW+eTsGHTtK0
 a2Cc/ShjRsbLEuzF0yFgY7p4ppO8hNcG5LexG7uhASJI2WOgO2wviBV0ITUCJuXyFUM8
 ctU1KPOdRo22z0IPxCwE/10OzDzSCr8ARTYq/SJ/sdKvggeJYYzJjYUVOq8+GFWua3oz
 MypjCZJ75hUrhKRki6W2PSjIAzZKypyyLaIrKAC1vEuk7/s8heBWR4t7My9JiEjnaoDC
 FiIw==
X-Gm-Message-State: APjAAAWy+55/gsIFGWy00BAF2eRM/pZWkXfskllM1kI2v636U0hBgjEI
 1Rvdwp1Qq4F8PsNYXhU/vj0S8w==
X-Google-Smtp-Source: APXvYqzh/r4DbiV9EsamRPst625uR6XO0ZpBhDvW+aHXCTSvKfeXH9rK3zM+5mnmdMs4kQ1p8GfAmg==
X-Received: by 2002:a05:6602:1233:: with SMTP id
 z19mr7903174iot.89.1579722600606; 
 Wed, 22 Jan 2020 11:50:00 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b145sm10955534iof.60.2020.01.22.11.49.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 11:49:56 -0800 (PST)
Date: Wed, 22 Jan 2020 11:49:54 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
In-Reply-To: <20191203034909.37385-5-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.2001221147260.248939@viisi.sifive.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
 <20191203034909.37385-5-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_115002_893817_1BB81154 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019, Anup Patel wrote:

> We select Goldfish RTC driver using QEMU virt machine kconfig option
> to access RTC device on QEMU virt machine.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I just grepped for Goldfish through the QEMU git tree, and it didn't come 
up with anything.  Per our discussion last year: as a general matter of 
policy, until QEMU merges support for a simulated hardware device into 
their master branch, we shouldn't speculatively enable support for it.  
So, NAK from me on this one until that happens.


- Paul

