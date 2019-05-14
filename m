Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4981C921
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 15:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyLIlMGSrohMabB4FBl5S1YgEXOets/lSj++gMBgw1s=; b=su4PRBIHgO1qaS
	eDwHongxatCPW8AeqZS/DupC5DYtHj1FbJJaTvr4Yg2y57u2jhZ/SSpwK4YgvpwHtqKXQZL0+Ajbn
	vf/qBX/JWDWZITsqdy74lx7Qrw3nNBGiZ0nghB/7GUleDNboW0f0ieXvUhCbKFbEcVhwX7Aa13H4h
	Io4ZvDqhoZsFQFYQFub2JGzUPlkZANoAZxoTw7PGYHlbJh6aqWDlbniCJ93t032yy9iOkKHPCM/5a
	EeQDGF2M1KkAiiRu3NqWJh1eApUXFhpcP0GW91yFkhGCLUCMPoFQ55y3BsYKKNwnw85lHjlrZqgAG
	6zgquAixK2qWsznGTkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQX3e-0003lR-Bm; Tue, 14 May 2019 13:01:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQX3a-0003l2-HG
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 13:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0kFdElstit5HS2EU/3V72XmqkmzHX/hLJaDRJlo92tE=; b=KR2ftx3Legw5rt2nBzRBv3At7m
 c6sBkIA+LG5oK99YSWNQ72RddWtfX4emfxqhnEN2D+AeATdWtPL7NeWmnWFp4Sx/rAFyeXfUaVuEY
 hOikx6j5xLKLnzO48LCjDTXBNX0pbnEUqrlcCp9bwbS9gMd6kF4hwSBn2UyjZxQW3CBg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hQX3R-0002SK-P9; Tue, 14 May 2019 15:01:13 +0200
Date: Tue, 14 May 2019 15:01:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 v2 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Message-ID: <20190514130113.GB5892@lunn.ch>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
 <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
 <20190513205615.GA5844@bogus>
 <CAARK3HkTCGWg4CAo1LmQHmf4_NFukjTwO1LAHjgSTS+R_5CRSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARK3HkTCGWg4CAo1LmQHmf4_NFukjTwO1LAHjgSTS+R_5CRSg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_060122_725015_17233DE7 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, peter@korsgaard.com,
 devicetree@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> > > +     */
> > > +     i2c@10030000 {
> > > +                     compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
> > > +                     reg = <0x0 0x10030000 0x0 0x1000>;
> > > +                     reg-names = "i2c-control";
> >
> > Not doucmented.
> In v1, I had added a new binding file as sifive-i2c-ocores.txt for
> SiFive i2c core.
> After Andrew's suggestion,  extending the available i2c-ocores.txt
> seemed to be a better idea rather than adding a new file.
> so added an example node which is HiFive specific in the existing file.
> Please let me know if I need to handle this in a different way.

Hi Sagar

Is reg-names actually needed?

   Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
