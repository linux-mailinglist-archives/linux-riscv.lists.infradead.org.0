Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFE38C0EE
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 20:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfXmWw48CNCWZXx08CI4WTItj7fgZ2tOl8zOyKDnz+o=; b=TAmuoxX6049Mc/
	EhrBPpoHGWY8K6mUoqU8Lf+pPSkYY+p4vII8vV2V4+5qZgXWIQhZPjJu/1sLtyk/VJZgBZdFCo1rH
	LpzvQFtpu9ciK4X8LpSvHZbum3g8L5MKp8Y/egAfaS4+6y5QMSMSM3vXDWCap2gsTyGLS9FgwFs7i
	wB4/VBydrY5ily/M1Ooe558M0RRsnrLNDDA4joldKl/qBvEM1/WIv3WWKV0JIqRn1bM6KnaYS8Ugt
	alDHiCtZNzT1LL5qHrXVzPYVL9yXMim6SfK0A9iWfhMBoulZlZgeDuzJleXDfovQltVpihEmXsIcV
	qH0CR2XDFzU0IqAlAhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbkz-0008VB-Ph; Tue, 13 Aug 2019 18:42:53 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbkx-0008Ug-6z
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 18:42:52 +0000
Received: by mail-oi1-x241.google.com with SMTP id m206so69240252oib.12
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 11:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JfFAdKP3yDSu1gNfDNgmsT7umfmkTpl2VNpXjzZ5xck=;
 b=N5dR9jNnD0q+2lM6s+HP+eZYAg/eqdrBMuFa2aoycdfaRp6hPQ1r76mAmPA9WFtf7C
 FVeX+9/vZLw/7uirWJK+AMswAYg5iSsrWBzwhZ4s75HM7IYVi9rVMfsEPAc//XbVAaf8
 P+WZF4jW40HC3uAhSCjjp8x12iASCNKu2FLcEddXa+v0wRmGNBiT4Sh5rBulRPTEAKgS
 OT58hSyX4FcyWN4oSmNp1Xcj6hswmOkgsLDGI00QZZwejiOS88qkfT3ZbtrOht9xzGsb
 oBPcCqBkBH0qCvKOOP9lwPWh1OaVSmOI5pQh3+qYcbI7MV9MqxOih+k0PxzZ249JIrDh
 +tHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JfFAdKP3yDSu1gNfDNgmsT7umfmkTpl2VNpXjzZ5xck=;
 b=Zb977itnXw1hHnYZkhPYvRwKrBuRnnp1hEnyuNjBHnK15/ZoYDpFnExfCN1t41SCVU
 QBwQpwpiqO3IbqdEEVyta8fOJSuZUUBmsexpKZoj30AcwqqypgkRo68ugKyAZ6Ob23gM
 wBTJTrr8hGkh56NXt0ciUsdVuQB6O1mlSRzlIIMhe5qRDOroovo7j8Fz8rCBZINevT3D
 c9CxQ08MJ7DpGNiOCgYFpMhjOFzHrRDraigh4AA2u2StlGlj9jAUK30UWcIu1RaRYUAo
 9MaRhVUQ0UPHzAPcYd6PzhWfBTPEfbtIKOg3T2wkDcm46vdc0SGOo5aSYeMfemhPVTMl
 thrQ==
X-Gm-Message-State: APjAAAXhYWPRn5NY7CUE2NAaY1fwGszAYxNClZJeLK/acbyj0XnHf+GT
 h14O6zeuRaL9PP486ztEiR1UAw==
X-Google-Smtp-Source: APXvYqyXdgJEdteZbftC+TJcIScPp+GF+ZzWtMuBywPHiEKat1r09dmv1SgHAm3azSTaqEwZv0TuMA==
X-Received: by 2002:a02:9644:: with SMTP id c62mr39674483jai.45.1565721770066; 
 Tue, 13 Aug 2019 11:42:50 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v10sm101180934iob.43.2019.08.13.11.42.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 11:42:49 -0700 (PDT)
Date: Tue, 13 Aug 2019 11:42:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nicolas Ferre <Nicolas.Ferre@microchip.com>, 
 David Miller <davem@davemloft.net>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
In-Reply-To: <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908131142150.5033@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
 <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
 <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_114251_252763_F116F060 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, linux-riscv@lists.infradead.org,
 =?ISO-8859-15?Q?Petr_=A6tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Dave, Nicolas,

On Mon, 22 Jul 2019, Yash Shah wrote:

> On Fri, Jul 19, 2019 at 5:36 PM <Nicolas.Ferre@microchip.com> wrote:
> >
> > On 19/07/2019 at 13:10, Yash Shah wrote:
> > > Update the compatibility string for SiFive FU540-C000 as per the new
> > > string updated in the binding doc.
> > > Reference: https://lkml.org/lkml/2019/7/17/200
> >
> > Maybe referring to lore.kernel.org is better:
> > https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/
> 
> Sure. Will keep that in mind for future reference.
> 
> >
> > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> >
> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Thanks.

Am assuming you'll pick this up for the -net tree for v5.4-rc1 or earlier.
If not, please let us know.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
