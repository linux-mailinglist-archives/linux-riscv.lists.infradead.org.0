Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781FCE0C84
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 21:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7XGELIzwVn+RzHxHdUAyD5Nk0/k+2gAd2ITASaN8eo=; b=ILgVDntOjMRkZj
	+6/PURdV9L+XZwRdvQmA9vaPanBtSzdhBieMmmmEQD/dax15kJi5S5uJXTsPJ+X5JTx7aMm/6qMP8
	zx7nJsKvOLqXO0qoFGczzsnQ7dgiyKm463/2OyVQSBD7EzVNw6rPQHRP8dryjUGPpZpamskHR6iUH
	2swQ5bYV+Lh3DVRwjS+VsBo9H8DM6YUe+UPMuymttZ26iPX5bIPeFGavsSEjzpbkpB5yYouOlYuGt
	/FwlVO+OCTzMN9JcY/aiOCzz4o9iioyWfSUBk3Nw/3xeLXaJV9Dkt16stXblIJJ4lMN6pClH4lNyY
	S3SfhPjzG4zbxnyGDxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMzkV-0007sb-Oa; Tue, 22 Oct 2019 19:23:19 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMzkS-0007re-79
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 19:23:17 +0000
Received: by mail-io1-xd44.google.com with SMTP id i26so12550356iog.9
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 12:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Z35gIg5VNnGoWRkAXQlW7xDcZ9tidybwVVKTt1ULIyc=;
 b=hJDge/esrdfFa6YNY6zLpWrNhnT1vMnK+6yKTySDF7X7A8kCqh7g9VGIGrCqmA3eDy
 +vJNbdHEIOyA+LAKuepLExmBXpYgtvAgSB46fxRVydVoEIY7Ud4+EggtysvenHkitn6J
 MxsUlNxJCjHVXO42qsHq7j0dQUXN+zylw/DteC9iJ9z4dY1vUnEQ74ZyGwWYhKEOlPpb
 0XHXco2eC7xKOUZWHVbrpMTtsWk9aDmDwJpu2r91G89jJLjmXRtEh36B6kyr5BMttz3s
 LigN5pbeqY5psQxX7XzLxSxWkHSJkziPmqXJgTSzGbHHCD9zQo26yq4n5eM6oKNyZfMD
 UrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Z35gIg5VNnGoWRkAXQlW7xDcZ9tidybwVVKTt1ULIyc=;
 b=Iljl6Z7wvN/KVAu5RxdJrhJENMq/gmznc1C8Bm0Q+TeR63DIhqDgMdNMPT49DhN9zE
 0sLjDzeJwFc/I04RkVbTT8WjqCaZzI4Cx+EP1u66J7yHp0Iaa0smZ3VcSkrBUE7udY3Q
 sflovyq31S46SJcB8+nA4qaTbdgMDTjNurfxjVQ38Kxo3YXj4cwrGxmLP2RLcZty8lgF
 DdxDtG0w4hSp+elYVDnuw07YrgdoGtLjhZ+ZP5+4LU3s1ATR1NNLD//IUd7n8xT2exKa
 811DcNF9G+8MZznwsh3KtxLf8g2EJnfH6o+JhGLPnlTnvHtrEaXioQgxjwAP/DKxtSWA
 RcoQ==
X-Gm-Message-State: APjAAAW29dL3u4YPCan10jtmcVTzQr7ZOBw16pTeGjHZJbDQkZjTxPxr
 5oNkZTF4hGkzVvvAqbgAyIY/xg==
X-Google-Smtp-Source: APXvYqzuDxF1LOkvqGYX2uoK5tzbJ7xW8oeCnI+esDWQYsrpbral+spQ/BWD5pKzYIvIohhFWZtZ5A==
X-Received: by 2002:a02:3081:: with SMTP id q123mr5395163jaq.24.1571772193149; 
 Tue, 22 Oct 2019 12:23:13 -0700 (PDT)
Received: from localhost (67-0-11-246.albq.qwest.net. [67.0.11.246])
 by smtp.gmail.com with ESMTPSA id d6sm5642705iop.34.2019.10.22.12.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 12:23:12 -0700 (PDT)
Date: Tue, 22 Oct 2019 12:23:11 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: RE: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
In-Reply-To: <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_122316_335048_4B0BABF2 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Greg KH <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019, Anup Patel wrote:

> > -----Original Message-----
> > From: Palmer Dabbelt <palmer@sifive.com>
> > Sent: Saturday, October 12, 2019 11:09 PM
> > To: Anup Patel <Anup.Patel@wdc.com>
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
> > Greg KH <gregkh@linuxfoundation.org>; rkir@google.com; Atish Patra
> > <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> > Christoph Hellwig <hch@infradead.org>; anup@brainfault.org; linux-
> > riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Anup Patel
> > <Anup.Patel@wdc.com>
> > Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
> > 
> > On Tue, 24 Sep 2019 23:38:08 PDT (-0700), Anup Patel wrote:
> > > We have Goldfish RTC device available on QEMU RISC-V virt machine
> > > hence enable required driver in RV32 and RV64 defconfigs.

My understanding is that the Goldfish support is still under 
discussion on the QEMU side and isn't merged yet - is that accurate?

https://lists.gnu.org/archive/html/qemu-devel/2019-10/msg04904.html

> > 
> > Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> > 
> > IIRC there was supposed to be a follow-up to your QEMU patch set to rebase
> > it on top of a refactoring of their RTC code, but I don't see it in my inbox.  LMK
> > if I missed it, as QEMU's soft freeze is in a few weeks and I'd like to make
> > sure I get everything in.
> 
> I was hoping for QEMU RTC refactoring to be merged soon but it has not
> happened so far. I will wait couple of more days then send v3 of QEMU
> patches.

The patch looks fine to me, but let's wait until the underlying support 
actually appears on the QEMU "hardware".  Could you resend once that's 
happened?

thanks,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
