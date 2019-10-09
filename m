Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1ADD1CDE
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 01:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14w03GOLAnnlyZVjQ/uu7Vmozv1eqypW9BKX+XCWYew=; b=sZ9dYkmukyREfs
	VVuHA+/PxQ/+gUdxoxxdvxipJlChUt9GtLZNOXHVNuZxRfMdaJ4j6IgbCU98olCQmgJQSj/e/XBv9
	G3tNPineIm0TtzZquvPS2RB5UYNgpqN6xms8Zi8RdSUZHYlwZtmtP4fakLWW0iiOv8FY4o5EWZjg/
	54vTnJ2bCvft9Q6ORVwe4mc7/Nt6neiHjWKmytMU0q0Qyv2Oy8eqy4EWrJrIIg6BEQ0oDbQRBTOpz
	W+gQ0IsEPWNj8M413fYqnx7AJuNzsmBD/G3/LkLpwFq7ELU7FVr74qep0kvIM8eeKK/lFn2IIILMp
	ba7bywc7mQHoI2AKY5fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iILT4-0003aK-T0; Wed, 09 Oct 2019 23:34:06 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iILT1-0003Zg-QO
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 23:34:05 +0000
Received: by mail-ot1-f65.google.com with SMTP id 67so3267919oto.3
 for <linux-riscv@lists.infradead.org>; Wed, 09 Oct 2019 16:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tPc6fpcwZsUc9Gutbs7P7oeYlZYQt/DPOxeaF8rIBfI=;
 b=aKvDWLshb5Alwf8LmsZKL4sV/6uBMfsIQVCeqE4jtCmapH8xsYOaZ/DCoF4lxuCnI3
 OaWIXICNaT/rlbyID/EwBMwyzCaexlkb180MNjNuzzIh1GPuEuJ1aTrdtxvzWZeKBMCZ
 HrM/hOl+pHrp5HopSkQDFkeyOQCcmXoNW6iEHC5taIXEf3qKAAICy/4AGx42U4NaoJT+
 dRi5QYBaWcNwrjbqP7bo50cu4gMr3+tLfKB0fSc5Ie21yoZdIAypDZCHq9u9MDOBB1z7
 hvkC+EuVI9HQvzTdE7ChPA/ODtFp+c17esDnRpxL5rO6IKjKU3DcFfiZitMK9H9b0EKr
 +TNg==
X-Gm-Message-State: APjAAAXuXG+FfQ328R+TZUFR/ZYGlIXUVOWE/YsTeD9mbmfDOk6gd/SD
 LXhtRjI3gFcrXx53DxQu5rGfsmA=
X-Google-Smtp-Source: APXvYqzjadRfoKvbeOh4piHSXFjFjIxcKYdBtSHwZOYiSb/x+QYN70jgIyRNnwBJ14txKmB+a9qLGQ==
X-Received: by 2002:a9d:6d11:: with SMTP id o17mr5294314otp.40.1570664042379; 
 Wed, 09 Oct 2019 16:34:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 36sm1116076ott.66.2019.10.09.16.34.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 16:34:01 -0700 (PDT)
Date: Wed, 9 Oct 2019 18:34:01 -0500
From: Rob Herring <robh@kernel.org>
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: dmaengine: sf-pdma: add bindins for
 SiFive PDMA
Message-ID: <20191009233401.GA8805@bogus>
References: <20191003090945.29210-1-green.wan@sifive.com>
 <20191003090945.29210-2-green.wan@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003090945.29210-2-green.wan@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_163403_855283_6284AB01 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Bin Meng <bmeng.cn@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, dmaengine@vger.kernel.org,
 linux-hackers@sifive.com, linux-riscv@lists.infradead.org,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu,  3 Oct 2019 17:09:01 +0800, Green Wan wrote:
> Add DT bindings document for Platform DMA(PDMA) driver of board,
> HiFive Unleashed Rev A00.
> 
> Signed-off-by: Green Wan <green.wan@sifive.com>
> ---
>  .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
