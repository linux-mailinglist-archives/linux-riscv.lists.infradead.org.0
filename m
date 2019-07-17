Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493FE6C17F
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 21:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlVThbwlLSOGEIxPWeRYP+YaKPGMDHEkAuKVAhm0XNw=; b=qrKVGHGLvMDXDv
	6aWB8b1ZjVnxFSHes72+lLd8ZasHHHchFknt2yZGWrQdyonup+d8e2IH/iIvuw8ymwBe8VQ4PBQXH
	TGubhBgEFVu/7/PbolLMj8usMj73IOGRvCxTTY8btkUqeheyN/QMwwpea1J+fwlgAYmBOa99rW9rO
	5QNld7OuZaGVp7YOUod+s3HCJDxNs/Q0NOsEnpmBic8gFf6I2R2wnweUNcXAzFufjVBniSyvXszGH
	0uWRMVDWYH700YOUNmqm1zXtZ6J1hWG7Cj4eW49/LNugYKDEvKqWobw2/I9rDkMTHBbVQcT5r1F8p
	id9khWRAfeFuoBLupULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpd3-0005H1-Ve; Wed, 17 Jul 2019 19:30:17 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpcz-0005G9-0L
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 19:30:14 +0000
Received: by mail-io1-xd42.google.com with SMTP id f4so47615544ioh.6
 for <linux-riscv@lists.infradead.org>; Wed, 17 Jul 2019 12:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=m+aYfYk3qqQFGYyIVUXqsjPB9Z++/CqoIZvcXZFm3io=;
 b=NJcT4ReHcQvNMVZLMGPaZHK9eIDuuQdneBHhUpijosU4l0tZrd8F1G6YEvtqk2ueyi
 ab1b1YjwcBKcTGWxeivJOOfmix6JaiRG0BR9tHga+fndXXM0hr+gs4SyrTWDVjI5fVGO
 gghtcNGqRteT6wrHv4pRZLL+6qVEHLLDHbnV7njAfX4NdhGXmRAI1fqW5JYPRGRWDP0j
 JARewp2Favgi9oXSi9PW9R61lRbyPMIvrMt+NZ+VbLzOVodM/REUULreUB03nEjs+Re5
 8YIfejH0GL6sMcGo0GH4RrAnp7lwelNfWuMTgP/cEASY1Ecqq6iNP9z6EJNJMghFmDzH
 TPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=m+aYfYk3qqQFGYyIVUXqsjPB9Z++/CqoIZvcXZFm3io=;
 b=WTPvjyvi/f73eQEJ91rkxts0TFczvGAk2n7kBU7Jb+nYi3WrR+jKT0Ka0+Kc2tFCMh
 SBe7MMolkTlYN/j9F9U4PEZ/dMOV4y1EQ3Mu/2nzPHTDmfhz3s3TWDqZnE/D9cU20kGn
 BgoY9sD9SAjCPT8KQDotUiXjVmobn/NQwXylZfr66wO6lwt7YF8JIzJLBLuC39gojWIG
 DlwVfOSGKYJvEqUUHMP8phqM1P17dPzJn4q5ELHnTGEx78EbuwSqxmJ9XvIs2TX3KMW8
 1QSDMvral/cAbbDsoEsHXRZ634KAGaCwyLQpZ5clrFW5rG/elkQQ+xmvQJCICjpwbWH2
 BC7g==
X-Gm-Message-State: APjAAAVqdj32nQs/8vUKKa5e/nOU84F2AoLFcKHHJ4KRc7eiBfPmoDLw
 2vOBVNZUEt4wMGoWbZwQklGW9g==
X-Google-Smtp-Source: APXvYqzwcmx1BCDmjWpt1tOLywaYXaCeovXL+ydA1c7dOKNeaGYAADnZWQbu/jN5GlJF+0Dyzy9HYA==
X-Received: by 2002:a02:8816:: with SMTP id r22mr43623986jai.60.1563391811445; 
 Wed, 17 Jul 2019 12:30:11 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id l2sm17528673ioh.20.2019.07.17.12.30.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 12:30:10 -0700 (PDT)
Date: Wed, 17 Jul 2019 12:30:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
In-Reply-To: <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907171228560.22190@viisi.sifive.com>
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
 <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_123013_111059_050AE0B0 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 palmer@sifive.com, linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com,
 robh+dt@kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019, Yash Shah wrote:

> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Dropping this one until it's updated to align with whatever you pick for 
the new driver DT compatible string, per

https://lore.kernel.org/linux-riscv/1558611952-13295-1-git-send-email-yash.shah@sifive.com/T/#me298e16b2feeb481116cca61b94e014433cf2977

Please send an updated DT patch at your earliest convenience so we can get 
it into the v5.3-rc series.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
