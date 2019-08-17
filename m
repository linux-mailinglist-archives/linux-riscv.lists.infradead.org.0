Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F24091343
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 23:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8rm7Wxn/XncE1mIcYol7DAx8uevk55LEx+2zMiHbZ4=; b=mwjFq77YRoUQt5
	uROxg1Yqn3R6hWkgd92ezYYAhoVrpeyWPaoSc34pBqcpt0KnnvHJo/ANLfC/jGn4RP1j5Ber1oAMk
	1oCt1KaiqY6N/4f6YIW/0ux5AnYAIFX2kp83OUgJ5FgsU9OX5xQzd1hVezobhroDa4/YHTyPqBs6L
	wq8SjGQE/l6yDl1x2Lb49Ab4gQUXD1B2CYyOLLMlyn5xJvDhNmyEmdD76PS4tPxKGZWR3+thHpRG7
	usHeo8o+Jt1znftHiiYGebPgSD6hLkUtJmkyHLBdsOOTr6vQ8h+t/0uT9yMqPfu5XoRjQcBxTiGls
	NuUdBhnaPPoR9w1tTPqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz6Ea-0001lX-Mu; Sat, 17 Aug 2019 21:27:36 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz6E4-0001H6-Nu
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 21:27:06 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so13256122iom.3
 for <linux-riscv@lists.infradead.org>; Sat, 17 Aug 2019 14:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=RWNnky4tg4pNafhn5H03aH8PwpXjgmBSavfJgIeX0Ak=;
 b=hov3AcxQ6M0mcpBwyir6wMfwuFoM/2pj4MlCmv+T09knj2Mmqt8UJz4bLEelDU0dEY
 q35RSput0GqdXzjDl39iW6e96fi6ZvYG7hVSedcruoQ/r2si3vSEQf+S3NbKo/JWKMFz
 l1Pncvs1WA7x9utXPIZU7hNH8C4hBPXAZA2OymhT4WgZagRVCnEht474gNpFzrJa6Xjg
 FvMhl4KIMbZ3FFtCmeGSVrAzUl96LhDRs8lD2zGj/KFGyr4hodIlFUOwRQsA6Da7S+zZ
 ouRU8O2CZBVhaSm1B4pGrx6QOwfw1b8VOQgHVh5JaC0Jm1cxHTFnZdggwnO1D5Ig+YJ1
 Lkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=RWNnky4tg4pNafhn5H03aH8PwpXjgmBSavfJgIeX0Ak=;
 b=de+MMx7/ipCQvgo/Se1BbdkSAJk2takINYWAH6a3XDJMVsKq1FNRXSOYi2WMUL7GHq
 7a0dFExp1C3uEY4z/N3WcBBM4PkE1ceRJsMmSlRbsQeMgjYYJ0Dsr29zFkqxa0xHvpDL
 ESJCvMwRKAvjdWWOENbDsudPWInc+Y/saLG7AmOjNc2QtdqnWTrTDSI5k0aUiFgjUktY
 2RyoqPI3dWngc4/vuqBQoZwFXDvM7THaB0VceW5TuXHKvpRFYm0I4+oJ+sHU1sldUS4f
 7F1fe3WytlmSKbyktoS81OEcEoZTK6LVQojuhUwT8TlqbXpLhOPKDMFhINPIyTOAq1nf
 HZYg==
X-Gm-Message-State: APjAAAWADdok6TiA5f62++G/COMjHoOKMU923kHLvqopFJM7fp3U8mIL
 vhEQTDNhpY8+t9ndE9Lk6U/hiw==
X-Google-Smtp-Source: APXvYqwKE/3SM/rVpl4teujkfN9+UilDZaKhxrZT/14FwdMPovoCNf3aYcPot40i7G8y5JQK54ukCg==
X-Received: by 2002:a6b:b9c2:: with SMTP id
 j185mr15509819iof.148.1566077223658; 
 Sat, 17 Aug 2019 14:27:03 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v23sm11488293ioh.58.2019.08.17.14.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:27:03 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:27:02 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 14/26] asm-generic: don't provide __ioremap
In-Reply-To: <alpine.DEB.2.21.9999.1908171357180.4130@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908171426390.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-15-hch@lst.de>
 <alpine.DEB.2.21.9999.1908171357180.4130@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_142704_778136_8542379D 
X-CRM114-Status: UNSURE (   5.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sat, 17 Aug 2019, Paul Walmsley wrote:

> Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv

This ack is superfluous since the patch doesn't touch arch/riscv; feel 
free to drop it


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
