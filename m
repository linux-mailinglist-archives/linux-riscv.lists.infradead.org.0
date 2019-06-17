Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C96C47FD1
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 12:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+C6dJcBlokGqpKVb1UvhgRBuM10vrIB6LCQeUxgRYY=; b=H3TZoy7JaD5yGd
	MlENJaap9EAoAyc9mt37k/Kvg8KuDs2FP2QjRwlwY2JXc0s29LNcNxeIcEHEVfCjG3r/lIV6vfG5g
	y1kdoJqrlCoUtPmYgf36JM73rdzBQXkpsADaRIFqt5I5+cR9ADArxFXds8aYUWhLc7lrgNWzVPy2L
	5ZLJ1IetBjcBJNbGCY0VfNAQuZmCUuaJK6X4wC0H8DoXP8AbiY6gEZcJTwo3s8O7mPIEYFjgZr6eX
	xQofDwHHGWTVrzhXvu9dhcjPjUshlcRNarS0pWEv5NFG5GMWe8PPO3gf8qaGvkuVApFuaIiWupaGu
	+1USsZO9F0XVzvt2QFHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcp0M-0005eC-RF; Mon, 17 Jun 2019 10:36:50 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcp0K-0005dd-17
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 10:36:49 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so15462845edv.6
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 03:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=foRtQV0HznBQvrobiFOuEiKivCdw8jc2kSrqkF2ZKAQ=;
 b=dtyfnzQQJOBZ4MB/etiKp3JJacUjndPwKn9cCQc8XVqpVqvfPp7uQuOgXn4gzWMX8f
 JGpf3xUSw1UDP++0qbnCQrW9EZD8Ql465ZuNmk7eH9uazrFC/53wIv1bdrCaAcmwqzck
 OXG2afiaB87SkWlRho+v0VsJs3TumlDhuCIWVaMmVMB+/1Vdc9pVV/oe4w+SGEI3yImx
 gOVOQ6jn2SVLJIas9ISkq7YtpClizkjMjr/Ni+epk/Tjd1ZpmHkqYgBbSVSMgoPxtbBJ
 W69SwL2ChRgU4OHXYJXjo1FNfFX7NpOV9GjsXoEfV16Gd5X6qj5Y4nkA/2x5ZIltOoBm
 j3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=foRtQV0HznBQvrobiFOuEiKivCdw8jc2kSrqkF2ZKAQ=;
 b=LRyQSKWOKNYmg6dK9jFCrgqYFAlylZq+0TslFzGguA+s5VueAI9jRF6PFiFhi6k532
 ezgC6xH3WW0dQk8pdNo2ii5ZyxzCgpaEyuz+J6qqs53+TGep1tl0rIUbf2Qrd8/ElXpp
 VDMmal4gG3d9Q4UkyEdLYl1IuwdZs4zq2CzmNYUdeGl5S4W0PhSxgP7tWAeizfMy6hBG
 LxESYOjuoeStIlhaiPzy3iZAGtzBvIxZkTVBGKSwEsfCjllV1XIUX02/P+uk2QaUCaCp
 6vXr630cSnYg2rK2gKnxCpOMbkMZyQMx299tMPIKXLpUR7a5378PJHhYCALvhId1rFPI
 h7qw==
X-Gm-Message-State: APjAAAUf/mf4MTjsU34t1eQD04LGateuun8H+L9Nd3mPVm4rSqn3r6DB
 lKc85qZ9FOP7XM+tKdNRXyn/oQ==
X-Google-Smtp-Source: APXvYqxVKhD6zn5ewGdEh8iMLLEQmcpO+BQVHrPqxjSEi9jSt+Hx0pjFe3lvumU+o7wr3JxCSD62Vg==
X-Received: by 2002:a50:b7bc:: with SMTP id h57mr118085474ede.77.1560767806767; 
 Mon, 17 Jun 2019 03:36:46 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id n7sm2093141ejl.58.2019.06.17.03.36.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 03:36:46 -0700 (PDT)
Date: Mon, 17 Jun 2019 03:36:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] RISC-V: defconfig: enable clocks, serial console
In-Reply-To: <20190609075544.GA32207@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1906170335140.19994@viisi.sifive.com>
References: <20190605175042.13719-1-khilman@baylibre.com>
 <alpine.DEB.2.21.9999.1906081848410.720@viisi.sifive.com>
 <20190609075544.GA32207@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_033648_081008_B6F127B1 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Kevin Hilman <khilman@baylibre.com>,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 9 Jun 2019, Christoph Hellwig wrote:

> On Sat, Jun 08, 2019 at 06:49:09PM -0700, Paul Walmsley wrote:
> > On Wed, 5 Jun 2019, Kevin Hilman wrote:
> > 
> > > Enable PRCI clock driver and serial console by default, so the default
> > > upstream defconfig is bootable to a serial console.
> > > 
> > > Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> > 
> > Thanks, queued for v5.2-rc with Christoph's Reviewed-by:.
> 
> To repeat myself:  where do you apply it to?  And could we please just
> have a shared maintainer tree on infradead.org or kernel.org so that
> people don't have to chase multiple trees to base their patches on?

As you requested last week, the shared tree announcement was posted as a 
separate thread:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1906170320300.19994@viisi.sifive.com/T/#u


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
