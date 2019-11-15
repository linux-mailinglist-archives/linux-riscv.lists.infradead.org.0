Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD37FE602
	for <lists+linux-riscv@lfdr.de>; Fri, 15 Nov 2019 20:49:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoEga71bf80pvGjs3yZlQj6rbavepGK4YwVbF3bZgfs=; b=pZ+ekmHxEGXwsf
	pNqGfynfeUv0fE+i1vn/a8cN9sk2NbquQ27R4JwzruUiORlBc/BqxldLEmHwOJmrGtrpTkNo7GYRB
	cpx8ciWlAcXxce6Yz0uiJLjwLhDN+516H8sY8qxSPosHVj8xC6rfyPlzK0eyqF71MrGlqUzuGKxSy
	ggYEDn+whbEFZTLalcQf3UDPZImBeWYlMR240iAZChy8xNHOvsQvvghm2NEnO9aSHOP2EMwtbVn8c
	wnltuLhKY5kfA3wZYS2dXGByxPIT4dwEHuJuJttuJsI1XkkF1ikR3XKnssJWdAolxcaSz5LpZ0K/v
	ppYVmAR4Q6oqLF8lyiPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhaT-000434-E7; Fri, 15 Nov 2019 19:48:57 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhaQ-00042T-8Q
 for linux-riscv@lists.infradead.org; Fri, 15 Nov 2019 19:48:55 +0000
Received: by mail-oi1-x242.google.com with SMTP id m193so9672486oig.0
 for <linux-riscv@lists.infradead.org>; Fri, 15 Nov 2019 11:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=89ki5gCyFaFazPM4MT3GuICeyjOsNZnH539wVj6PzCM=;
 b=VPWwE9RrAqszxVB1mKYP6/s1DmY2ix8Y1fafLQWAW1wg1eaMprmTPWK/iPrrMUJsTB
 7HEWh2OpE4cCL76nODlrp2JnwOpKlYYMVjdoYSIPaXcFxcjAoA5oC9tfbmZ86sZE87qS
 kf1TVxe90rRN7AbhalLFMHiY57JoeloJ6qnB4tqTtyb/F3V9ygt/d+Fik42s54QbOsfP
 /0Mp7D/W4KFUqzRxjFNjxRYHCOArf612hqwEDcodf4WmkpkKtQERh4i/bj62U2U7lTvu
 L8iBUfClvKXkhGJjNB/jDJevtMJL7zKz0p46Bx1wFJVCEWjK5mwMY/8oQ/VumMGopZVZ
 uyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=89ki5gCyFaFazPM4MT3GuICeyjOsNZnH539wVj6PzCM=;
 b=XEOHHd77j792auCwJbbu95YIwr5oK5PzN3JsIfigy8PsSyh028Y2DC2sWXaUCo1lr2
 R6K7hiJXsBiqfLmgHVKqfj92+sWoqYJboAnEYSZWyyDZ94lOyrWfbm+RHLCvg5qBjJRL
 Y8WU6eYyJny0dn3YTQTiNgxTHWSlKQtTEDnCQLSe1biyKcjNgKclDanABr4Jw0sbLG2y
 r+r1blxTR0OvYxDIuYfHyPrBpi/19O4ooBmrVWRWzdZxumq6NKch9zhFY7s7ppNkCjPn
 q+7fWByTqum3bP4ACgfRFH98kApZ6VB6yu6rFDcFXC4/ap5hpxhpR0atXXMdAHCAgqYu
 itIg==
X-Gm-Message-State: APjAAAXqMg1fQLA0FD+CuTbtbS51oVbOKx7/JEior0CV3QYTPssdP+02
 iLWGe0nNyDJH2x2uc9/kGoszHA==
X-Google-Smtp-Source: APXvYqxC+q6bqr48ncu6FV5lYoc6la8mAyX4ATuvLwxlhhukNSzuVzK+EEvv648084tqxyvuAKlo+Q==
X-Received: by 2002:aca:c4d3:: with SMTP id u202mr9701947oif.59.1573847330775; 
 Fri, 15 Nov 2019 11:48:50 -0800 (PST)
Received: from localhost (42.sub-174-240-141.myvzw.com. [174.240.141.42])
 by smtp.gmail.com with ESMTPSA id z16sm3100151oih.56.2019.11.15.11.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 11:48:50 -0800 (PST)
Date: Fri, 15 Nov 2019 11:48:49 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v6 2/4] riscv: dts: add support for PDMA device of HiFive
 Unleashed Rev A00
In-Reply-To: <20191107084955.7580-3-green.wan@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1911151148400.3813@viisi.sifive.com>
References: <20191107084955.7580-1-green.wan@sifive.com>
 <20191107084955.7580-3-green.wan@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_114854_375680_CBA09CC2 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yash Shah <yash.shah@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019, Green Wan wrote:

> Add PDMA support to (arch/riscv/boot/dts/sifive/fu540-c000.dtsi)
> 
> Signed-off-by: Green Wan <green.wan@sifive.com>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
