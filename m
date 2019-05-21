Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472942513A
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE9D5AhHUHR/U1xDfC1zGLsklDi/vdGSUaFzrU/4z2k=; b=XbkxJLEpF81F4r
	bRbJmUYL+6Zb79qTbMdzALT2B4k3HEsY8gPZ++H0ZKzoR2empNk8ToBLk+lahwzkTUTRE9U9KydBe
	sNqPj5hNWXBD1ByCqppM7diM5Lcawac+FZmdyrbGLWElBf/bumNPuKo1IxmGD4rlCUPgKdNUMx7GI
	8MhieO8+I/7SVH86KV5qBTe4pDtLfDTUu1sfguVfcH22M09H++O+CyZXPgTQE7sAOnk2KHkilLIgY
	6r9MkhNe6oRoRfjPPE0twncLrGbp/LtykKrAkbmzDulqv55NS0iCUeHSfZNv+aaFLSkDJh9Jp+++G
	HpcwWhjZcjmcu/doiRGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5Fo-0000TL-4p; Tue, 21 May 2019 13:56:32 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5Fl-0000Ss-9U
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aUJZZRLHv52jJphrxyVf6Se7F4GlPP6o6lDgQeElm9Y=; b=lpyEW+F9YVINwDf5xsAz3Mvhmm
 oXx87QYdqdWhbuvfi8fV7EB6Rb2PXNFqTr7Tt2o2n5VxEWaS80Yar0iRI7uJMy1ekjM3rxn6kWNxa
 Zl9OePAd2sjwtbirtAcjtE2uUsm0OS5sbb9an7ripkXAAJv7jdYznefbax8bSVFSORDY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hT5Fh-0002zr-NK; Tue, 21 May 2019 15:56:25 +0200
Date: Tue, 21 May 2019 15:56:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Message-ID: <20190521135625.GN22024@lunn.ch>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
 <1558445574-16471-2-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558445574-16471-2-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_065629_479325_6785CAF1 
X-CRM114-Status: UNSURE (   5.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 palmer@sifive.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

>  Required properties:
> -- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> +- compatible      : "opencores,i2c-ocores",
> +		    "aeroflexgaisler,i2cmst",
> +                    "sifive,fu540-c000-i2c","sifive,i2c0".
> +		    For Opencore based I2C IP block reimplemented in

It looks like there are some tabs vs space issues here.

   Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
