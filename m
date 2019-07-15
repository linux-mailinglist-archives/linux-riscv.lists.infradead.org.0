Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9E568834
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 13:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BoQpNRdGMS5udrEcRcnajHi3d2gmjdQ6syjBak74r4=; b=tqcIZF9pfPi+K1
	IkMgQLYgHCu7pHKK796b386daW4WCEbXBeblzAdIx1psEG34gBnP8ZKeycGZ0mQHvdixNUVYbEFIr
	MD2kmCpB2h2vns08Hx9Ep/ydc9gmXjQRFwchFVpHSr2nP/LMF1psptUP7G/xe9n/yNdP+XZQl++p1
	rpL7cSd6D8ELlnoDr+TxW8Q8P5uxowARSeMgi2p4En5+tJMBX4FgUTPC541KJOshWe7mpZJsUWYDJ
	YF6oelUFBOIlxEAaceFhPptXSqqZDvUVE0UHISPyAp+1/3NH5bj5ZKVqCX8x2FakuHA+PgG1UPUUF
	yKBHmc6xEeasy064WgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzCV-0002Bp-V2; Mon, 15 Jul 2019 11:31:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzCS-0002Ar-Eb
 for linux-riscv@lists.infradead.org; Mon, 15 Jul 2019 11:31:22 +0000
Received: by mail-ua1-x943.google.com with SMTP id o2so6592131uae.10
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jul 2019 04:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8XU8jKhBVJIGwCUR6YALgDf3CzV2y2cp7RAEeInAmf8=;
 b=IPuTYW4kgjiPJCyH1ulOxymE3bGfWfAPxbnGMMdbmXgssWbpw0MKDtY2U7jTXveIbD
 h3cxipr1WYPFB3gqwLBvVEUrIqUtwX4RHgnKJandIPsbDfadTa4jeydkybajjZ9r1i48
 F6jgvAAQGwrK5PsDDfGllISYJ+b1ElTIDkZKLYiTzA9iXle/autkWZ6fY/kbLzk89XgR
 rVrB7OmeRRk/T8akIfk+3Qu8D62jjB/4JOLLpsg5TfHVwoIRAJZxxtb5o7iF6n7EgWcf
 MXVqSD0AklbE3z/ZWXs+IAnGxZVTVLiazXoYHlCkK5qdTfSCPMqmtsxwXcY6RrIyEb0Z
 CiFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8XU8jKhBVJIGwCUR6YALgDf3CzV2y2cp7RAEeInAmf8=;
 b=dvHlX6dLJmER929qW4JbYulHmVyQof02XHL9bgx+L7cCzxtd2fUstVr5JReEl0vlJ+
 lwdRZ6FrY+9ZRCa/SdDTAzyMtWYh8/7/V+0MFrFNuubOfdtNkailSVswLmguNMrJPnns
 wnBYg6WT29VJSsJDFtvrxDOptJns6w2JvI8YDIDTOa18NqHXWaLu/oM1CqTTALaO6iWQ
 2KdasGJaPUWDRsxRQkM3NZzqy7h5H1PR+tCsuLHcAhAGeAPXNH7r/IpF2rBNu0zuBIhm
 nQimxfJRObAkIJc+MDPcbP0hYrYD1/iAzJAfuQTCZGoRwn5sBjdbq7ILO6zGgxVsQiLZ
 eXgw==
X-Gm-Message-State: APjAAAUOLOR6rPpqlN2mqxFSEp8oTXyMawpl4AwpxhxK2m3lMDUbWqkW
 RZYq+VqdyN/gDP5N4Qyvbppc+gq3OY2MEeWkRhX54w==
X-Google-Smtp-Source: APXvYqz8kX/FHtA/R6g5rZlZruok/jN5jkOYLlQ0oreU3tYwXOubKKFkfzEoS8mZB9/JdupuUl3LMxao7rM9cewVF2I=
X-Received: by 2002:ab0:30c7:: with SMTP id c7mr15963841uam.143.1563190278200; 
 Mon, 15 Jul 2019 04:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
 <CAARK3HkMz3AdcVyrteGmqczCaMDTYS1h9uALspm75RFE9c6jFQ@mail.gmail.com>
 <14025233-db7d-2307-5367-d41ed24f371d@microchip.com>
In-Reply-To: <14025233-db7d-2307-5367-d41ed24f371d@microchip.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 15 Jul 2019 17:01:06 +0530
Message-ID: <CAARK3H=TJNABphR_WZEQ-6ZTkr4ugEJhyutdXE_JZiLS-EU67g@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
To: Tudor.Ambarus@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_043120_507563_246E82DB 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vignesh Raghavendra <vigneshr@ti.com>,
 richard@nod.at, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Tudor,

On Mon, Jul 15, 2019 at 4:35 PM <Tudor.Ambarus@microchip.com> wrote:
>
>
>
> On 07/15/2019 01:45 PM, Sagar Kadam wrote:
> > Hi All,
> >
> > Any comments on this series?
> >
>
> Hi, Sagar,
>
> I was OOO the last 2 weeks and previously I was busy with other spi-nor patches.
> The series is in my queue, I'll review it. You can check the status of a mtd
> patch by looking in https://patchwork.ozlabs.org/project/linux-mtd/list/
>
> Cheers,
> ta

Thank you for queuing it for review and sharing the link.
I will follow-up on patchwork.

BR,
Sagar Kadam

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
