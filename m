Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3622D47DB2
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 10:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn0AFF6NpMkCuEBYkMQ6g5E70iZSU5kZ3DQZ/hM8LIs=; b=BW7+A4TTsddGKp
	Efk2Bzkq84uFcP2/qKVnvDojIWEoi6o/oeHHrGnnim1LhuWmdLH4HackBPm1UJwq3TF3U3nqh+FzH
	IdQWEZK3oOif7IeOYRB+biKjzXenvNLyrmPKKDp7K4nBWQlj8vYit3YO78APLo5scOSJBWmfsA4Wn
	OGq8LMyptGrKFnC6kRuPaImsKqO1l2SGPj3Q3e04yxVacfnXKygdyESfSaYUzuel84xfRsBqfX83O
	j+MNPS39/HX6rEns/r7Nh8ptRffPJQoWkdWS3mpbJLj8ypFxodMh3/bIEJNPAanUMk0oUxDDduFt5
	/1ekg/qXT3wG25Pb9K8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnRh-0007hu-6y; Mon, 17 Jun 2019 08:56:57 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnRd-0007hO-RO
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 08:56:55 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so15047388edv.6
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 01:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=nYP7nwkWft+3uUp9e25ZuOw9THhDw1ggRk0lkiQT8jk=;
 b=lAOFLfNpOvUuTJG1ReESb/ZnQ/2/zpkokfGcQ2pm7U3B/ryQAyyBLNSwP+NaSwRoqS
 U9lIIWVsfLkHWjYKJNX9okgatDFpPrHcqGu5rwGnoQigsqMslV09MLZojcrsVT7jgDyX
 nrXyhqJ9ZHGZRUS7ihpHWC4mZHqlD9wRoW57gXBHyhQhSYKH6mkGgHi9aXZFwCbmvxKs
 JVPkRYWJ6lr3YwDp2RVZWtnfBrbdFjWztay7Az2zA/5ZG15yTbT8JyJVWMbNm0djowcr
 so84g4+chJssDRGKjlNSz5ubvVvDAAEsGAN4CXgcqf8mslLPgg9lphass99teg01v2X9
 nGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=nYP7nwkWft+3uUp9e25ZuOw9THhDw1ggRk0lkiQT8jk=;
 b=VwTwvQu+7rlr5ec/qpz9m8AXlO6W44OkXc8hEoc9ttr4pmHW4bCEtGK+ziySWKujcw
 LLWDvxU0h7VN373aBfZ/Eber9PQprmdYympmQbnLp+382iMqiYSDiPVbZ9YxrpYbKPNk
 lKknLwMoZHJFBdQuj8XTJWY9qsZtgAO6oht4fTPwS4KvF3QypqOrg0NhPwVaSlDYgTF5
 W9xLqrCQmX/ptd8H64zTYB9YDkm8Si3m75V66FacJuKTTtZcmNMEZBOke6GQAwyj1uBO
 byRsj56cEvL2XR3YFR9t6RNUFZo19mtXQ3+rHEVGKKPx9z8ktNaCLPiJvM1t9WaxDl8v
 tONQ==
X-Gm-Message-State: APjAAAWRAGHo/aT+M71NRuACD4GBJml8PfTp+UFB7V9cg99axPCFRaLv
 U67Rak+jhIdgpI2fiLgTu8xpUw==
X-Google-Smtp-Source: APXvYqwylTBcYALz6DItF8lNeiu/bxiKZNfUEzJ2MwvfkvNg59Cyc/65bONS/5J26iZtM3yzFUyF6w==
X-Received: by 2002:a17:906:1181:: with SMTP id
 n1mr63614604eja.177.1560761812064; 
 Mon, 17 Jun 2019 01:56:52 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id a3sm3394908edr.48.2019.06.17.01.56.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 01:56:51 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:56:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 1/2] macb: bindings doc: add sifive fu540-c000 binding
In-Reply-To: <1560745167-9866-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906170154280.19994@viisi.sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <1560745167-9866-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_015653_896414_65059EB6 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com, robh+dt@kernel.org,
 ynezz@true.cz, linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Yash Shah wrote:

> Add the compatibility string documentation for SiFive FU540-C0000
> interface.
> On the FU540, this driver also needs to read and write registers in a
> management IP block that monitors or drives boundary signals for the
> GEMGXL IP block that are not directly mapped to GEMGXL registers.
> Therefore, add additional range to "reg" property for SiFive GEMGXL
> management IP registers.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
