Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F5F28B62
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 22:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BetqEQFjc16dIzZrL7oX5EooTYEBZ4BXhB6j6eb08eY=; b=rto
	JUUNXL45uiDyxns8SHOav5Gj6myD+l0R+FYzVm4fTAdVEzTp0vpIow0jmbRUeSearqczQxWOeWqS/
	ZpbeRAKzpBkoEQaTdGxAIoV//5QUa/7VmCiyVkvLP8rt+ARLr7oWNiEp0Y+lxcaFH/Zkwcu3g0FXj
	xwzagb+me1zNp5OPzYRd0W45JER0ZVMjRvYLGRZfiHgH3jehqt9nGRvMj6Vub8vMNKdVbbSyeM84b
	jX4WuAAzTyS2mi27byx/Yd1JYpi6UQcB9kVDl0yFdkrdeJmMkJQNB48TzQPzqCyYs2ArklUPI+niz
	GJ9EoBHPb6NMl6kNHtPII2Dggr79bdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTu6z-000676-RD; Thu, 23 May 2019 20:14:49 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTu6w-00066B-CT
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 20:14:47 +0000
Received: by mail-pg1-x52f.google.com with SMTP id h2so643273pgg.1
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 13:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tZPNt+rLtUBdYZbp+GReAQDN4uohyDhwin9i7fqNR7M=;
 b=UyRxKupvpchv4zUcVTIPwRGpdH+S9gd/1KPfrt85pLEA2muykirPLiTshBFtrZPhpX
 ZNqkJL0sw3Zg6Df5LaOGlwVR64QpchLLcWy/qn+Hx7jyD2lLM13cmRMVzWBrSn1r4Xls
 W1+OlWofLQN3kwd2SlvoKBPOctI5eKRDkyP/zfCR/N64ApQ7yg9jy26CSLtpHGlyVzpv
 oVx0FLxaqMayfkEXnCfNU+h0+QGWjAGFNnN6Mxpm+uiG8fhwLVrdQHDd6wtUmp6ef5Iq
 XGMmnQGmqD9/uut2xzqjkWdYco4zsLgA66rogAMuNCKB3JlYWt/yVT8qnmYJgh9+PNEh
 I0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tZPNt+rLtUBdYZbp+GReAQDN4uohyDhwin9i7fqNR7M=;
 b=CmHrR4aUAKhuBqDQ1Y0nip0oUy/cud8POxSa6lUZ8GUSj8TN+6MyIaAVXp+AJ6aHPV
 uY9jkeM43tMybVqlYYr5pocrzjdR9rUQhiDrtc+f5w3ODxwCEiS1tPzmnCc3KkOPHugW
 PMnZUZeBET+vV7pwXuHp0/CCOI9NWJXhyNj/VemUEG6tXS2YnhjrbPZAb3WTHzIJqJa/
 0raZ8Lat46ciEMFZkN5k8P3vdQEzHRWcwy8gHX2i8hTY4RAPVbsJ9kbsQ0J4MaxNquS+
 pC6MbfgaDWsk/jTbkjoKhil7AuhIuFIlrwKMrzrdOopjpvoJWI1ptjWXOUpu78h56HCC
 ESDg==
X-Gm-Message-State: APjAAAW1ZKDEYPiYIkNJhK31IRjKeaeKCneTqGsS/uPZ/Kgtj0l9RtaY
 OTXOk2Tbnw+xTNdPla+6NWkHxQ==
X-Google-Smtp-Source: APXvYqxdEMuHsSvTD33i4R7P8PwKnLNgtSRQ3qW5XaTRqxwwtBXhqKfM5bY739i1ywptuOGdBFXUgA==
X-Received: by 2002:a63:1820:: with SMTP id y32mr98313150pgl.287.1558642483635; 
 Thu, 23 May 2019 13:14:43 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id i12sm180839pgb.61.2019.05.23.13.14.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 13:14:42 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH 0/2] tools: PCI: Fix broken pcitest compilation
Date: Thu, 23 May 2019 13:14:22 -0700
Message-Id: <1558642464-9946-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_131446_486214_49869DA3 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

This patchset fixes a compiler error and two warnings that resulted in a
broken compilation of pcitest.

 tools/pci/pcitest.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
