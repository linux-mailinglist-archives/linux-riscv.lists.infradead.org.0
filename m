Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A609F6F8
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 01:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=w9adeJZee6PgCvS66DJa48O4oWMKEZecU938Px42g80=; b=nI8Ij+zQuZV8TSsoMQrw0Wy6J
	eplUAMBolL3hGaH3YlsAKDmvb5rXPlNxVz3wEfbfzpvzE8+g05kYIWbLcFMrbuuMR3pyKYmBXlxU5
	4yTKfy3Ddx1IN7mdL/Misav9gNPlbF9my9rSIqGkkcLcfs+53uoUx6Y+Q+C1q0WqZys+QlMS0p1Uj
	ADOTjlwn7xSfNyD0lF4bdhlusYHJHf56NFiYyLJ2l6/qwRsVs6o96UHTyvr6GBm5if9dofS2h4e7X
	OhufKLXqaIKttNx6EwIIftNias5c+27AehtC+PC7Wn1j5hrtjTN2dexG6Sy3CaUQ9Lp52IQdEndF/
	tqmNHGQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2l1e-0000V8-GS; Tue, 27 Aug 2019 23:37:22 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2l1b-0000UT-GY
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 23:37:20 +0000
Received: by mail-pg1-f195.google.com with SMTP id i18so309087pgl.11
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 16:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=kKp3RU3/nr6zAi1XcHUG1q7j4xoSv+zNUf1bXZ97gqs=;
 b=W9cIi33w/osc1m1chzKg+h/+dsNsbDOqbirnr9ETFcxPywe8GubrLWivLcvnGzyprk
 VizGVnfu0G+Iuv0PHR+HTYm7FFdiybH2VSD6ZzVxrorTc3wHB0fF5LyPZ7K8mlsBzWAm
 6M1kP9Y3oub7MQRcvtHus5xCjeO3Fe+Fm+7E/9ehjKtjn+aLcFSoDHJhrrf0IGQSZ/3/
 w4uEDaZpI6DBhgC9PEdzH6ONP8U1Y6bUy8k9mgtuS4sAzt+6bNn0qkwSZbrTonOsh3pg
 1XzXFhzxjWabAQsaKCH5tD+0GdYbOPMyqzn+9eNv8XZZWALc3v8RNF8p43VmbhCQvqv/
 yC9w==
X-Gm-Message-State: APjAAAUtBT5RAkmjBTmzKk7ZVYpUx9ad6AEBtzp+9rUuzPNKj3jKKicZ
 H4iGjeh8+ZTIGPJ82SXfW5n/eA==
X-Google-Smtp-Source: APXvYqzfMRjZVJP4TOJqKo6BCjPIPegk8eB6z/Qabnt77V7vseI+/uWcZ64QfSaRY16wYCaRm18eRA==
X-Received: by 2002:a65:6108:: with SMTP id z8mr872696pgu.289.1566949037744;
 Tue, 27 Aug 2019 16:37:17 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id g19sm471856pfk.0.2019.08.27.16.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 16:37:16 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:37:16 -0700 (PDT)
X-Google-Original-Date: Tue, 27 Aug 2019 16:36:41 PDT (-0700)
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
In-Reply-To: <20190819101648.GA29645@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-6c980844-cfea-4aaa-ac86-3c99ce6a6d14@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_163719_551316_4E02ABA1 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 03:16:48 PDT (-0700), Christoph Hellwig wrote:
> On Tue, Aug 13, 2019 at 05:29:58PM +0100, Mark Rutland wrote:
>> > +	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
>>
>> Since the MMIO layout is that of the SiFive clint, the compatible string
>> should be specific to that. e.g. "sifive,clint". That way it will be
>> possible to distinguish it from other implementations.
>>
>> What exactly is the "0" suffix for? Is that a version number?
>>
>> If that's a CPU index, then I don't think that's the right way to encode
>> this unless the programming interface actually differs across CPUs. It
>> would be better to use an explicit phandle to express the affinity.
>
> It isn't a cpu index, I suspect a version number.  These show up
> in a lot of the early RISC-V DTs coming from the UCB/SiFive sphere.
> They've now spread everywhere unfortunately.

clint0 would be version 0 of the clint, with is the core-local interrupt 
controller in rocket chip.  It should be "sifive,clint-1.0.0", not 
"riscv,clint0", as it's a SiFive widget.  Unfortunately there are a lot of 
legacy device trees floating around, but I'm only considering what's been 
upstream to be actually part of the spec.

In this case the code should match on a "sifive,clint-1.0.0", and the device 
trees should be fixed up to match.  We match on "riscv,plic0" for legacy 
systems, and I guess it makes sense to do something similar here.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
