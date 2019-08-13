Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948988C0EB
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 20:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39ULQgFDvlhzX57fqnO1L3TgYPcEwZlNjBLnXMP5Wcw=; b=j09zZMFRnasfBN
	yQplJT+P/EGZWA7HkiIJUexGG6iDB5pvNXYUITbBcLTqtPodpLcQwc1/DK+JKrN0cXm+k+F4mbbsy
	pDwXj5zVm9Jplh/XHsHaino12gvIFpAgAeHJ/uZuDQndp2xdbxiwjc+Cv9x+La5uDc2scLp4p6b6G
	QE0qs9ATohfCQNUpReBKnn+F+EZ/1Z3+KSZHDURki6Eu8ZNYzi2ePu0JBIXJ9vdm2rx1gdZvMyU1Y
	zmXd9jigJl+bAHDj/cDYWLpq87aVjC3vv/nfMl99sQmtcUxvUzq72OQPsyLx19X/fFHC/85xjcauF
	UTBD68dKBNZMuH4d4rSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbkE-0008Ln-H9; Tue, 13 Aug 2019 18:42:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbk3-0008AO-Lg
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 18:41:57 +0000
Received: by mail-ot1-x342.google.com with SMTP id r20so26526063ota.5
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 11:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=fX5yjg/2zdiBezYuZ3iR/R/lX21Xnc3q+P+SkpxJPD4=;
 b=K0rfqc3MV9Ye1zNkcmZD56MLVzb20dfzFqvgae3GxR9n6zhp27voJQiAVbAkg7OMeq
 LOcTLMBRl/l1QO63J21y5UKSmHMIKItMSLpFLi5AobisxH8lGcy2xucbFyt2CHTTF13D
 LUIiB23JFws4kF0EgcyUj0Slm3cBtfaH4aosnUw58T1crgUCCkQac8s3oGE8Gpz/C13b
 G3+LRxwQlKxKbFG6OmQezQCg00OWxBRIi0dgwos5zcqkBF3l+a7GsrvPIfZSzHRJMd35
 4fty1YV/Y9SKrq1rgwPNXBRB7uobNf4vms7SfnK3T6B7j+k61AfuaKLk33gI1JHicpK4
 HFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=fX5yjg/2zdiBezYuZ3iR/R/lX21Xnc3q+P+SkpxJPD4=;
 b=qoNvW5zGtWHLBCSyvmpfUIlsAux9j9nLSJzAgyHPJyzdJI8EtW5r2rPfC6LqXqfVBk
 19T2XWVOXMp/+26sLHvIjEcVdyy0l9mXuR1uP9A2F8K4szSsYVAJlX41lQbRkq4vn9tT
 l6ABdioBO/UiTS1U2OuzHqBQhLBJTjzDRSgbY9dwWjyP13M1gSTGjz+POIwW6NTVCH6q
 iuBFTywZtEE5q6vrLn2XWc+kA2vxQM3yJDSL5reIBRxGKZep3gX4CxSvPt/UlQTOO2Yk
 SiKbG/DSMzAJR2E7X1BIlDczOID8+onaooSLAUlCfKThIe83wUC0t1OJNFGjr2NMAXwh
 4Kuw==
X-Gm-Message-State: APjAAAUfMkyhNAK/T+xi1Z/SbCpRU3p6hkCmXmI5Z0lsetOGNelIdq2n
 6VWmBcEuKXMYzSv3vWYfGVuyHw==
X-Google-Smtp-Source: APXvYqwqPZ5UQlBLYUIPuJNViu7vjL/d8NYkDxT9b3OHqwWDHdjO/dJHLuKBdIt2gWRUxAIpGp0PIA==
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr4841202iog.77.1565721714779;
 Tue, 13 Aug 2019 11:41:54 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e17sm21413438ioh.0.2019.08.13.11.41.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 11:41:54 -0700 (PDT)
Date: Tue, 13 Aug 2019 11:41:53 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: davem@davemloft.net, nicolas.ferre@microchip.com
Subject: Re: [PATCH 1/3] macb: bindings doc: update sifive fu540-c000 binding
In-Reply-To: <20190812233242.GA21855@bogus>
Message-ID: <alpine.DEB.2.21.9999.1908131140230.5033@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <20190812233242.GA21855@bogus>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_114155_966474_C0776522 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 linux-riscv@lists.infradead.org, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Nicolas, Dave,

On Mon, 12 Aug 2019, Rob Herring wrote:

> On Fri, 19 Jul 2019 16:40:29 +0530, Yash Shah wrote:
> > As per the discussion with Nicolas Ferre, rename the compatible property
> > to a more appropriate and specific string.
> > LINK: https://lkml.org/lkml/2019/7/17/200
> > 
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/net/macb.txt | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Am assuming you'll pick this up for the -net tree for v5.4-rc1 or earlier.  
If not, please let us know.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
