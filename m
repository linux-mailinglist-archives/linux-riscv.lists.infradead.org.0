Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8B4DBBA2
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhAZqRVpKbtICiVcUI3Bcyys27Al/KANOnauW4qztSg=; b=sv5E2/KOlwvjjQ
	mf5AisqO93Pgny292BakfL38nnCcSdBVhs1LIWbnkaWHiZy6swzRDtNXgi+/Ei5qoVu56afysPmqh
	XhXmq3w23sn6uKbXCdzbmkEUYnMSzvwXopi4LeayRzo+hPODDm8EJ0oIA2fJDKeBviXAfNlL7zgpz
	BGmJsE6LIxzGjqIZFoy1hp/3GlgKNLGZnGHUrgPhF48L757kQzbXdbsqKgALfYDEaP90mbhRf0LsN
	f3bbvSoyEUrslkmOyZPj2858NncvZfGPabqFkTh6/PXua1sqzNosLEtfag0a/NinMO5hcpuffTSRC
	yV0Muabs68IJr+ION+ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIxr-0005Bn-D9; Fri, 18 Oct 2019 03:30:07 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIxn-0004YT-Le
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:30:04 +0000
Received: by mail-io1-xd34.google.com with SMTP id b136so5750381iof.3
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=0ankXvMIvRkTZk3dLR1A9aHQ97LMyM5OOOZtIX7Iozk=;
 b=a6W4jKAihyR2DAorQFwaIbD/tcsFbwtmZT5ZhH87uKXJ4mUausGkrXSgF+HhhHBLSx
 G/oPOUOVhI7wTWjJG+xuqxk0ZoxXno5FAv7WjD3usvLop4rE30g2iJu8SatTdQ/WjX2i
 G+qUbUfz5gl+k78nrbS2NeJIb0sqNjhAXHsfToylfZau1NBJ9D7Y98j16IUUxCpjS7Oh
 rTZdYBhKrJVVC+M0x2S1N7wQ/SXl+jmpjcvJ1SYhoJj7d7rufNQBRF3tIF/AGtPpK9KF
 5H2fyiVNxMgvWlaWUM5CbL1jepm8XxIC1M3Ixay9FIE5DQuBDf9bhrLwujZkXgo94+nc
 oiLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=0ankXvMIvRkTZk3dLR1A9aHQ97LMyM5OOOZtIX7Iozk=;
 b=d+xJYIbsGM8rLLdmg6Hqlu258emsOqjgwCS2mx2Ae0dYBFGG49HPvoutjMUCiW0oSo
 fdVIFxBg8K18hFUZjqCGe25tyOQNGNzaO+gillKB/QNCG5kpNObUrHDOIiHDEEoWrFxn
 Lj/ivMIGNENpWIFqLtewr1UXasE6mhhyelD3EPSQOnfYAWilhSJGtOcIk5czabu7MQ0N
 ZMePbbaBuTFrt4plToKcubSZGz8KvDuc+Bv/MLxkOjqreWkUhqYxR1+h7AUb9aq8N1Px
 R+aVLr+P4ac1aWftXIgttezv2qPMI+OtmCvLTC2tbzOaQKSZB/hqla5HnN4Js4lTpA1R
 81zg==
X-Gm-Message-State: APjAAAX46HcJDUDYmf9OcAvjN9q+GGR1/qAjfKXS62mv6hW+5/Kh9aun
 7K3idR4c4RNvqpDeXrO2uQ9PEA==
X-Google-Smtp-Source: APXvYqzancRHP9NlKKPWFZ5zDnjvcnLwivbBtuzPVWLW19H7v7aB/W4Nsjevr+ygqYdJcSsFCi5kUA==
X-Received: by 2002:a02:715e:: with SMTP id n30mr7021276jaf.120.1571369401285; 
 Thu, 17 Oct 2019 20:30:01 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id a26sm1508255ioe.77.2019.10.17.20.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 20:30:00 -0700 (PDT)
Date: Thu, 17 Oct 2019 20:29:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: RISC-V nommu support v5
In-Reply-To: <CAAhSdy1dvFzEh_WZ8aDNyCKi968Dwxm+ru6D0DF08QoOq3JjLA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910172029170.3156@viisi.sifive.com>
References: <20191017173743.5430-1-hch@lst.de>
 <CAAhSdy1dvFzEh_WZ8aDNyCKi968Dwxm+ru6D0DF08QoOq3JjLA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_203003_721225_0BC83253 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019, Anup Patel wrote:

> It will be really cool to have this series for Linux-5.4-rcX.

It's way too big to go in via the -rc series.  I'm hoping to have it ready 
to go for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
