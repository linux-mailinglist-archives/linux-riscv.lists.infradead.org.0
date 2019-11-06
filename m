Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4313EF1DE5
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 20:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQESwu3BswhuS2skUhrWJZOS7PgeAMbRVomguywqpW4=; b=tNj0k13CHeUq2A
	Yi2BAsJqDjBsc/B5kgHEqxcADgRNj9BZ1Gevg5vgDJOIn31KILRjYEa7THEejvcv6dvz6U60d0qGW
	SSWb28FKCUyYTfT+FTVrHi6ShCfi1YTtqGyE3gg1rIHhSQHHaoHD66qMK1miQQY4Dy6x1xryi2lLx
	kKL065qZJHOrjDyjTYyIr0iJ9dRSRXqw8g1wZbhjQpDM+YmVwaG8DyhTc6PwVCEsVh8Nsf4Q5z0Yb
	GGtxhxoXnEynFNTRl6xa5QsVGeyCc8vC7fGTBrSjWHz/1X3I7JjsdxuMzQNMmZquPDDf+NiKYtjIr
	0R8VanaeYLuds7X+fEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQXO-0005LR-57; Wed, 06 Nov 2019 19:00:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQXK-00058K-M7
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 19:00:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id z24so13218540pgu.4
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 11:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=rO+IauwMGdgaps0ucduNU3H5J/6BS8Jkm16fDnKR+To=;
 b=eL4lIcmqkWusaAGmp02ncwkbxgTL4yMKeWUr+mzAwtW54bYNR1ni7i+r/J8NYEJVp/
 sK3/+Qjl9hQUHxuzlSj2e4blqI4r+fU2JAjP2husqslwAM/x/XYUYqgEe64pMmEBqilL
 FWbCncRVlx2G3K3tlbg41bwF+eGxOE5vUgJdZZViavo4iGWaEFMqHPzAOJbJOvHtzITt
 sUlEAct93wbBYoY8dT1Y7Kbs3ISnPoR5tPodYkAh1+gFndBmchQUkI5cCqeZwQWpPhtU
 DGyrIr6+Bhh2ybD/I+pEmHE5CkQvNIjG4J82+6xalXHo2r5XOqwSszq+55CHDiEHipxs
 BPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=rO+IauwMGdgaps0ucduNU3H5J/6BS8Jkm16fDnKR+To=;
 b=F00t5n+pnHbb53gFJHd22dFUnw5yolJhy5zlloUXH9KhWRWG+Qy25Qg8lMIFuiaoQQ
 F8Q3h8aC4qKXCuoZarej6bDIGA0SLZrr/g+PXNVGrX6HLIbzkaYRz5daa9t1NAN9Xbzp
 9LLnRb6gCF0Z4r0ymr4ph3SPnThRIMOlw6NGPPmF8W9LII962NKFiMnX7dNHXXmhJIJ0
 hd2YkGK37AdFoxJ5aStWVB6rWBJLu5IzguaEYN7TMEPHlJ7sXRjpJ2rnjBYpatWfTYCn
 fY/d+i2RbAcaqPN3lTe8oJNF8P7+RFiE+6GMF0QMJkWyq8QGTv6Pk2ZsqoloS8Z6mT9C
 dvsg==
X-Gm-Message-State: APjAAAU8MmHQOcEWTHGQQXe4hmiRD7OFA2Z1llLefkHmPD8RG84hhH0T
 ocgh7f8iIK+oO7C0BksERQNjBg==
X-Google-Smtp-Source: APXvYqzNSDigwU6xgzfjskX2HjwUGhvaq3NRBRwrZvIRrwf8p+EzTP7vyJq8epLKZN3rqxpyUFm4Og==
X-Received: by 2002:a17:90a:1a52:: with SMTP id
 18mr5688274pjl.26.1573066807979; 
 Wed, 06 Nov 2019 11:00:07 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id i126sm26724495pfc.29.2019.11.06.11.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:00:07 -0800 (PST)
Date: Wed, 6 Nov 2019 11:00:05 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v2] riscv: Use PMD_SIZE to repalce PTE_PARENT_SIZE
In-Reply-To: <1572920412-15661-1-git-send-email-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1911061059420.20606@viisi.sifive.com>
References: <1572920412-15661-1-git-send-email-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_110010_784380_343B75DA 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup.Patel@wdc.com, linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 4 Nov 2019, Zong Li wrote:

> The PMD_SIZE is equal to PGDIR_SIZE when __PAGETABLE_PMD_FOLDED is
> defined.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks, queued for v5.5-rc1 with Anup's Reviewed-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
