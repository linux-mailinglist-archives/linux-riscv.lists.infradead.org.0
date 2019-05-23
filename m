Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024A627CF6
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 14:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZmVUpRNEq7h1toN0s7Hr7vB8BPdgAFcmAMIuIkfc70=; b=QzbLvQibts92wb
	AvS7jPlZWuQnPIXkiCFJxWQq9Z371Iieq7xiIAmmJ6oYPGTjag67CDqP1KF7pKyTwHLug/h1ZIXXA
	19s8np8hTOzreQwhlNShOEASUwN6CaOrvqlBtiaRiGI5a0MPHa2E9hAvus0v52gja27p7xqYctLbn
	D9p6xxugZvaOnv6nutlxlH6M5O5BLpsgcI0gHHCataRJrN1c9h0o3eQuqz7usNua2/5pud5i3f+fe
	Wj0GGs00dwxdWvwT2GGm+Mz7wRy8Ni+E8T800/tkJu/j/wwEqEd+NQirgO22eNLKo5JVxtc/Xbo6S
	p+xY05povvq4AMtg13tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmvs-0004MA-Cd; Thu, 23 May 2019 12:34:52 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmvm-0004FS-6n
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 12:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kzTgxZupA7hbLq4h+ysA5lKtx8rooCtnoiPerHmRDtk=; b=mX7hFCnVVU5gXlZVbtQV49J0RR
 1RbakI/TLZCKmqLaacEyYJ89p+DRzCD5Y02/I/M0nJEUBx9PvbzzPMkfUxBCyxmXymxh5zukjiFm+
 sbZ7x9/W3PvlXcqbZk+ZfWXa/rKsghXXbFlM4lKtuk7JkbWkKx8+ITUHy1V2H4LOlwUY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hTmvb-000474-HJ; Thu, 23 May 2019 14:34:35 +0200
Date: Thu, 23 May 2019 14:34:35 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v7 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
Message-ID: <20190523123435.GA15531@lunn.ch>
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-4-git-send-email-sagar.kadam@sifive.com>
 <20190522194529.GJ7281@lunn.ch>
 <CAARK3HmMVibudG2CFLBoMSAqnraXyirTL6CXYo1T_XJEuGJy7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAARK3HmMVibudG2CFLBoMSAqnraXyirTL6CXYo1T_XJEuGJy7Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_053446_395853_572CFABC 
X-CRM114-Status: UNSURE (   6.50  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peter@korsgaard.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> Thank you Andrew for reviewing the patch set.
> Can you please let me know weather you or Peter will be pick up the patch
> for v5.3 or they  should go in via some other tree?

Hi Sagar

Wolfram Sang should pick the patchset up.

	Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
