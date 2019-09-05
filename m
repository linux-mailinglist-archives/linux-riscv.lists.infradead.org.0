Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45510AA25B
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 14:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02tmoaGyxq7bIdQ8pMr0hU7cpclz7K6RBoS8KvzRIrk=; b=sW7zQMsfJekVIZ
	K3OJINJIzFc4R2dX6pf0zqGi9eCuCQPfUwfFE018ddDURWrhD9LZCTU7bbl495LpHmxsNyaVtNQXy
	cFYLs56z4S01aK9ciPDWvMbtpeXI4gGwnm6LAnkPMT1tmVCeIycYUo7bLiMQMgJYVSVzUsGr4ob7s
	5O7zlVmIBVaw3UeYEOdAhPq5RVgWrN++Vs5PjTXz+w/YnDYVCpe/O7KPHtreRwQvbgqLb1luM0OQM
	vEH8jPgiRZjZbiJNOrjF7gDAzlnXWPdFXi/6Q67+aVNzKyb2v1GOtOXt8A8zSvO0V7Cgs0SDWjX0U
	AlVAFy9e0CUY4fRM1I4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qSe-0008R6-4M; Thu, 05 Sep 2019 12:02:00 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qSX-0008MP-Kr
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 12:01:54 +0000
Received: by mail-ed1-x541.google.com with SMTP id g24so2440643edu.3
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 05:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+ahss9R0/cW0DeOcwapy1IK/U2OHcaNx/JZYNK4ddU=;
 b=kM+jXFXj6ryQBoFGB9uVMpD5N01LdySrsqKY7SCEXwho8V/Xq9LeBCbfdV9TxRvtCU
 c2GiT2vCFKL5re78cdhlwCOWLaFSHAkOiK7zSk0nB2OLrjjxFhYZl+YFf4o62EN/wavF
 ZwNw7kmVnNcocDME5w5k9IcAPI3QRm9WuXcI3PXZc8jg+dx8gKVCXrZpMM04xxhT/bjd
 60G35GNVdQMm6idbnyVWrbNRvkNZQUJLHRTlHdDGKwLJsdZSQ0iKl9oc6cyLzffU8y04
 RPQ/WRXzqgJw/nQmey7H0IJGOk+oRjXBm56HuVmU2UE/Fw0JiWtUwD+kFPvQ73M4a6sX
 dHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+ahss9R0/cW0DeOcwapy1IK/U2OHcaNx/JZYNK4ddU=;
 b=C/+//LdW/MVj5cKLOKGlxaeH0w544dz5y74UiHd5lk2A0C7clbcfs0N0tQAqZq7I77
 847gbWZDmOluILdjNEKUKl1d6tbgBH6eTlPQklv7uhWtfv1Gbw7jaM1aIlQ/7tc1TT9I
 WsDXa5AqLPvMfeDW3DAzL50Rs1GxWBd5yuVmKVMHVpYfCXkWs7ajbAjKfmAfjnjwV7Sh
 9Aw/6fYpHdtmDNO6QSj84WLDcoHRUNHWQXwMgqXJVzu8DyP49PQoa3laLRZ9HUY9TnUa
 TVHQAZpFd6+qD3CB6Uct97JJqN/9LRNaX/udvR/8urRmVOY68mFEEGpDIhABJDjC00sf
 gsWA==
X-Gm-Message-State: APjAAAXBdasHMxywnsWhLfhQjPNPmKp9AymvsL8fHUuTNkfgY2jujucK
 x9/KwPobhDDVBQUSvat8pzXdmr9UfJ1AWcFKw60=
X-Google-Smtp-Source: APXvYqzs87vMu6hxGQg8ipzGgvddanc1Tbgk+uTCjFPT15fz9a4XMXJqpRaXlXqPeQJoHQbhz2qbq5T9mUeY/Q0ur8s=
X-Received: by 2002:a17:906:81d9:: with SMTP id
 e25mr2422583ejx.37.1567684911805; 
 Thu, 05 Sep 2019 05:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
 <alpine.DEB.2.21.9999.1908130758550.27195@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908130758550.27195@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Thu, 5 Sep 2019 20:01:41 +0800
Message-ID: <CAEUhbmV8v2rjhAZfOMauJC15eZpxYUZ=9YS-YN2dhNRv4H8bEg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: sifive: Add missing "clock-frequency" to
 cpu0/cpu1 nodes
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_050153_753854_B2E4FAC9 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 11:00 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Tue, 6 Aug 2019, Bin Meng wrote:
>
> > Add the missing "clock-frequency" property to the cpu0/cpu1 nodes
> > for consistency with other cpu nodes.
> >
> > Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
>
> Is this being driven by a schema validator warning?  If not, and this
> property isn't required, it seems better just to drop it.  It seems
> useless?
>

Yes, I think we can drop it. I will send v2.

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
