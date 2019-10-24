Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E86E280D
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 04:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFaNvKkxi7/ohqcTlhsXmW5TZDc5KDEAx53Q5AsKle8=; b=OK1knhbcQagpAK
	RzvS0d3gi4OS7Pr5oU6zf7EsFtYrMfPIbe9yBbyYD8ce1EwkDwMR9SnqvYFLymH3YvGm2Y4CgR/PW
	KK42zS2kfcpitNpWyie3guUaukCAFIgW0ZT2UCCksXgUb9H7KBKa7iQVZKYP11IhmFiB8y1ttH9Ch
	fsr0nqz/EfgmOCRjSsWSIX174pT82k99Wdl4HOlGdX1c0p+bAPJA+vTYySquWrFiXYU6bZoZ+s3gp
	d/uaYcGuu1MQhfv0L3vHhxH8GFEcmopjGCVUOwftfNtQzggjnfe85e5qmInQktL6td1owvTybajqO
	IDUXbPWPzSeJ9BmMfFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSku-0004Rz-Ck; Thu, 24 Oct 2019 02:21:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSkq-0004R5-Fp
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 02:21:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id r144so15678161iod.8
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 19:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=CEeGqPLdVUFK4E06K5s/BvyTM+3EASX/NmNd4HF1T9E=;
 b=FEpZaar+jSSTBS+hrgkAzEdE7BMeFjNOy7oYHopbJI4TEaEwSQiVvXb05T/RKJ9NAf
 p0DSaxCHcZSKsbL5eMt0ItoZiNMkIeBqdgPKRfAmYGU0ie/ll6LUH6Qpzuna7qFpZgQ9
 T2gV73fh+v1aiuzlYjqVH7WpTOK1/wTt7D7ZgN0sYV8taQXpYYPLetjaOvp1E8e/7AOE
 TBhQqXzFaMaqPFOXpJO2ViujCYdHgytLpWdKPIidgQdAYQuGMaOLgIKGFuJ3q/fRzef8
 Yt8Fuuefw5LEJVvYiCzwqVeUqpz/Zxt9rAXuRBBG4KJxV1g8Jqtl5EaF7x98qiFBtuDX
 xArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=CEeGqPLdVUFK4E06K5s/BvyTM+3EASX/NmNd4HF1T9E=;
 b=F/xi9pK5XIE2/j+JutyPVfCONSOVlu8P83OvrQAIUgVnXsEHcScLCn4WkRMNYxNwrZ
 g3wwKMAzkRj/jP+fO+muFBwXSnzfI1F002pHLMlCIFRhdHGQdpacRz/YgjDfM+p9/efo
 pqcbilZEyc0/vdQgN1k7Q0UL0srK0JDRHDVbC9r3SoZI9cG5GPIDTKVABHuQJ4eMGX/m
 f+4+a/j66Sp6G8e6LkIEeoW3gWqV0DT0TzdAqolsA1mXOxoGNFuzUOPQne7QRO9vr7EB
 66er8RoGoLKhj2l7K+q9KuDL+IvqNmEmuXOfkVy8J2buQRwshda3b9HGzIS88Ya6zjZi
 sdhQ==
X-Gm-Message-State: APjAAAXe4uwKVHStifRRvQ9yc9+FYrQvjRI2hPKeleJ0e4bW7AWXRYll
 6Rq5vQ8SFkiw46Z/T0/HwXroNQ==
X-Google-Smtp-Source: APXvYqx71s63VEhqiPVPbIhY1cTYRrDBWEpf69L+HML/ZjJbZ6FsqUB3r7FRKD5BfxOr14jh7bZ51g==
X-Received: by 2002:a02:741a:: with SMTP id o26mr12718541jac.48.1571883694883; 
 Wed, 23 Oct 2019 19:21:34 -0700 (PDT)
Received: from localhost (67-0-11-246.albq.qwest.net. [67.0.11.246])
 by smtp.gmail.com with ESMTPSA id 133sm6324555ila.25.2019.10.23.19.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 19:21:34 -0700 (PDT)
Date: Wed, 23 Oct 2019 19:21:32 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
In-Reply-To: <CABEDWGzeTLk7POWUkU1vJfyxGwjzOzWK-1_RAq7rR1wRh5hTFg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910231917340.2470@viisi.sifive.com>
References: <1571847755-20388-1-git-send-email-alan.mikhak@sifive.com>
 <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
 <CABEDWGzeTLk7POWUkU1vJfyxGwjzOzWK-1_RAq7rR1wRh5hTFg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_192136_538326_16A60542 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: jason@lakedaemon.net, maz@kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019, Alan Mikhak wrote:

> On Wed, Oct 23, 2019 at 11:54 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > On Wed, 23 Oct 2019, Alan Mikhak wrote:
> >
> > > Modify plic_init() to skip .dts interrupt contexts other
> > > than supervisor external interrupt.
> >
> > Might be good to explain the motivation here.
> 
> The .dts entry for plic may specify multiple interrupt contexts. For example,
> it may assign two entries IRQ_M_EXT and IRQ_S_EXT, in that order, to
> the same interrupt controller. This patch modifies plic_init() to skip the
> IRQ_M_EXT context since IRQ_S_EXT is currently the only supported
> context.
> 
> If IRQ_M_EXT is not skipped, plic_init() will report "handler already
> present for context" when it comes across the IRQ_S_EXT context
> in the next iteration of its loop.
> 
> Without this patch, .dts would have to be edited to replace the
> value of IRQ_M_EXT with -1 for it to be skipped.
> 
> I will add the above explanation in a v2 patch description, if it
> sounds reasonable.

Thanks, that explanation sounds good; and sounds like Christoph will 
flow with this change as well.  So with the description expanded as 
you plan to, feel free to add an

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
