Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74AE9B171
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 15:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPq8//g3xzQc+7+vtItXX2GGYOfnKFJ5v+4CmP7XJSU=; b=QO33hR+S4h4tFr
	tjgPcdDibLmhOdhKd5UNLnI83fbX8Xw8w+11tC67pEJP7mhPtGG4ZZEoh7jsRQO55cVhn8aN7NYwW
	o2/rLH4ux1EYgFwl02VopdL9dmSsIdScusL1vh99q+CfLPzdgNnf6wkJk+Ipw9vr8prT5hEGffWy/
	t+h8n9dT2kgCwQ1I2LSsN93Qg6UZlXILQZ9S+cNam65OVpJcV1O5bSnEAnDRF9Xhm+Gdd8JAVO4Fd
	2HbYHVA3ljJqKVMBWsLnhu9WTHUgM5M5ycejQ90Msqf45y/u4NPe7Uinw8GgzTC7TBV8eCE5CE+iF
	YVyopOvhS6J3vDj7Qjqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1A2j-0002rC-Gi; Fri, 23 Aug 2019 13:55:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1A2Y-0002hq-Lg; Fri, 23 Aug 2019 13:55:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so584736pfe.6;
 Fri, 23 Aug 2019 06:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BUAiw1OCmJxcFhDfFwk6vJ4atOusYa0enlexPK5RdcM=;
 b=p1kpl17yQ70OZJjj0Ex1dhmfo2/01ZSY1fOdxj+J/0LKK1tvqbyWGApNp+RopSCBU9
 F4JDgPHlcLiS1iW8iLa6+Oz3hvJ93YLeeZOw8VI/PWR7yXZkQ2Y3BWj/9xw0zvYm8PgM
 xCORxywfStYr2iObddDIvw4uxyyFDzJ4nH8mOJxihZGgGGvOFtqX5rLKfVLumbHnUiDf
 cp+XG0kMNbLUq5HT5W+hUh/PxuwaBDz2hVRJ6ISjeckQ/denHk7F5JHtEBhHBSkgw5OY
 5pVQ0XdibEupNYaM8DhPTT4HkPLbYUHv2fszhaDZIjemQ/II2oo6OpoSBdKla1hplbzS
 Zchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BUAiw1OCmJxcFhDfFwk6vJ4atOusYa0enlexPK5RdcM=;
 b=ambJUDA6H77O2JRF1Xn0g4+hPaNFUVUrw6JSj2ov3BS7apT/4fYq3UmVfPKG8CuOwt
 M/VB5THFbE327DzQpzGNx4E8O2gw58/tvksIcY0h57W8avWm9JA59baENG6fR6N35F/C
 qzxtUizK4jC/l2g1xgTwNyatzBTDLnCv51mglMzwp6pOjyLGdlFaLWxcyV4mK78rbbqc
 A2PqPEZjsK8WMScP/ZkTPoWnG5gX8Hj6HyTw3RBe+xF9v/grZA3zJTZOUQVN20ANaEpC
 aDzfHtzCPCkiA9lHS7gofjyUdSplmA3osIAWzbo+Ml/u58EhRCu1yvlsWhLukfwB5KcK
 Ikdg==
X-Gm-Message-State: APjAAAVVn1vpPC/+INnH8YJMHNupDcG0SBAUCdb6QdfY8arfiUgTkYNM
 yBEQDMAJnN1di079NMoxqw4=
X-Google-Smtp-Source: APXvYqzeZA+QEa5Xq4+pVCPW2H7vItZxat4J0/SQ1XBxiBF3Po4TqLpUuSgHOh67wlOMVyJ/4CHLaQ==
X-Received: by 2002:a17:90a:aa90:: with SMTP id
 l16mr5454982pjq.73.1566568541762; 
 Fri, 23 Aug 2019 06:55:41 -0700 (PDT)
Received: from localhost (g75.222-224-160.ppp.wakwak.ne.jp. [222.224.160.75])
 by smtp.gmail.com with ESMTPSA id
 z13sm2477619pjn.32.2019.08.23.06.55.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 06:55:41 -0700 (PDT)
Date: Fri, 23 Aug 2019 22:55:39 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 05/26] openrisc: map as uncached in ioremap
Message-ID: <20190823135539.GC24874@lianli.shorne-pla.net>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817073253.27819-6-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065542_713914_56EAAD7F 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shorne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 17, 2019 at 09:32:32AM +0200, Christoph Hellwig wrote:
> Openrisc is the only architecture not mapping ioremap as uncached,
> which has been the default since the Linux 2.6.x days.  Switch it
> over to implement uncached semantics by default.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/openrisc/include/asm/io.h      | 20 +++-----------------
>  arch/openrisc/include/asm/pgtable.h |  2 +-
>  arch/openrisc/mm/ioremap.c          |  8 ++++----
>  3 files changed, 8 insertions(+), 22 deletions(-)

Acked-by: Stafford Horne <shorne@gmail.com>

Thanks,
 -Stafford 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
