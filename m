Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D5057B91
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 07:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=553l3njkvtg+O6/LQZmiorpNSIgfDLIt6RcSZvhBucE=; b=rj3lI78SJsEBRN
	8VxtYOfr8cF0catHFEusYik6HFFh57oT8ztqzj4fZc62/TpHBlWfGngQ9kIzvTgOqyuymYGVvv6/O
	Hg0MBds9v4/qPCWLb44f2EiSDN9XPikWzdzNOVKVi0ToFbK8NUpLuNKUdtv9x7ibvHAnZUU9u0MC/
	x1oD//+HzPxD+ZXRTlSQSExspjSTrbGeESQAFkD8ndotjLnZ15Rlc6tpGcsop2eUMAIGXv7v4TDMn
	VM55BpodqONud67zxjQv8Hjvut5vboj1srDFhhb1bQ+vLLlOfNaPNtkgAVVJooF8m3wOkjGKhqQ3n
	F7o0/yjfV5RwN/7J+t4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN5t-0008I5-Mt; Thu, 27 Jun 2019 05:37:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMrz-00013R-Kj
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 05:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=; b=wP9/yCZHIet6WH+PC2fyNXBMs
 P+H4Lu0SUF2aPQcs6yoslqsHWJPC2ufkFkd0ABPEmnbqUtaNZAFI82eaYLlCG1E+rqh/05oIw//H4
 HZWS8aBLR28qtGag4Gvh15ymK3HU1gTswg3xCAQrdN2+P8N1Et4t38TbEiH+xIoaOAO8blBb3/Rt4
 HG0VsxXvHKNVenH6ScK2aBBBqA1Dc5PAWJmxHI7ZoRx+Ghd1zMEEMX4EMAjbvFt5ud9+WJY2Rsewn
 dWwCqSXQTzUYC21xQiqhqCRZCFqrbL85FVcEM5br2JDctHIeKzxsdsXwV2IXWZ2P6jQHVzaqzaMXT
 MCPC3Tm3A==;
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgILR-0002JJ-F1
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:32:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id s7so790172iob.11
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 17:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=;
 b=MH3wkoDXHfXF5fF0q+4ozL7+zgvn5SeiKtLiHYzCNIcqFHXPkPAwLMDAdDzk2aiIwQ
 J78PjhZZ31NuKv8zy1/s8y3MRPBSFAVisSCw3pC/YBe5ea4C6Y+uFm5wHpal8nsxZLgB
 17lsiKG0OIZo1/fcOW8X2bMD/PSdyDvCVff3iu2G8wmtMH1QHqrOcCB6eOgDt4VuNjyk
 Poo9nGwiL6andopg9rnVNY+S336HW1WgpryVcFd4HvLr9UhpPKVIrzsbJAzaKITb3fvh
 sahpopsxSkGUr9VegYM/UOtFcnxFerQwnrKs330QIqOEtyCvWxY78rUw69KxygSiqpv1
 hjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ne57qfOBbrpWTmSwKmjlTjKmsCo+Sn2qKc5QwP4b3qo=;
 b=Z8OthRVEllx++y8Pr7YvUDIj5nyvPXEdJu3O3Z3+lhupNarg/r4NbloEQsVVFr5fiI
 vaVIctgTCubytjgsfpFWgWnoh0PbzvWv30Ftlh1XmDRRdrgoX0RnqM7/raDrnG9KTJ7X
 ojDzdarK+GXNI/ZVzCanHHB7qX9tmKctBM6duqxnpA66WFzJt1WDs9a9vWveopuPZNYO
 ojWI2H6lP1zTGX4VQccPgVvC6d8GzM6k/nlgo8A7VJyaleK85oZgGMTa7i5l1zLUA0SC
 abub5EwLnfw+FtEaFTPDG94noN0j1g/YkmWieTTLugrivW3qnGxA6oEXwSoIgWgSi9G/
 frYQ==
X-Gm-Message-State: APjAAAVjjCCT1FMtA6uul3yrJenF2IosqwCLm6N7LQmrjG7NL0ojf0Rz
 g+0pSjCACwZQ1/C0n/4uXd6x4g==
X-Google-Smtp-Source: APXvYqzkfD/79362o4UBWtnH1yN59+5ocrB6dWn1PQrF9lxmChizX5AwqLnfXA+vMES0ciXEXr5ebA==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr1187601iob.271.1561595498768; 
 Wed, 26 Jun 2019 17:31:38 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 n26sm410757ioc.74.2019.06.26.17.31.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 17:31:38 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:31:37 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Sudeep Holla <sudeep.holla@arm.com>, Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v7 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
In-Reply-To: <20190617185920.29581-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906261724000.23534@viisi.sifive.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013257_695123_205BDBC8 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Sudeep, Atish,

On Mon, 17 Jun 2019, Atish Patra wrote:

> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> The current ARM DT topology description provides the operating system
> with a topological view of the system that is based on leaf nodes
> representing either cores or threads (in an SMT system) and a
> hierarchical set of cluster nodes that creates a hierarchical topology
> view of how those cores and threads are grouped.
> 
> However this hierarchical representation of clusters does not allow to
> describe what topology level actually represents the physical package or
> the socket boundary, which is a key piece of information to be used by
> an operating system to optimize resource allocation and scheduling.
> 
> Lets add a new "socket" node type in the cpu-map node to describe the
> same.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

This one doesn't apply cleanly here on top of v5.2-rc2, Linus's master 
branch, and next-20190626.  The reject file is below.  Am I missing 
a patch?


- Paul

--- Documentation/devicetree/bindings/arm/topology.txt
+++ Documentation/devicetree/bindings/arm/topology.txt
@@ -185,13 +206,15 @@ Bindings for cluster/cpu/thread nodes are defined as follows:
 4 - Example dts
 ===========================================
 
-Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters):
+Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters in a single
+physical socket):
 
 cpus {
 	#size-cells = <0>;
 	#address-cells = <2>;
 
 	cpu-map {
+		socket0 {
 			cluster0 {
 				cluster0 {
 					core0 {

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
