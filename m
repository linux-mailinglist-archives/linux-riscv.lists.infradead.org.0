Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB65B4DC7
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 14:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLUOtYF8NeITJb4hlXzsQoxO9JfxU81p2t+rpQzzkTQ=; b=SuXra5UcZ1XLv9
	1l5xf4QiV+3wV9GS1YDqrw0qCZsUny5TZiMmYQ16VLIQ0sdQfcWiib5oX/f/aGneulqwZsqyKPI/y
	5l9J+bZUkCPMkgeMLDzdRi51LLwJFkjc9gGdEikB0kCsdpe3YwYLWHXmLmnMhBKZbrhOePuBLctbo
	S5bh7cAxlNT5ebbS3NP3h8EkrJOQ0Du1h9x0y4vewaGxFww972fu223Ac+ejHkW1XTeL0T5ICqgGf
	uYLngxiOYG23dwP1shwdj2S7N9v2FbYzgA/Sgw/UmVANxJOwWuNF7LLpuggiN3aoROgdDYY9BQI16
	QVxZg1GVCmqHZAb4R5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACZj-0007Ao-LY; Tue, 17 Sep 2019 12:27:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACZ8-00070Q-Mq
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 12:26:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id t3so2942405wmj.1
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 05:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=8G6S3cshgPA48meEAaZ6NSKpV8wAh+/bom1QFfZg+RA=;
 b=hIFydeMfygJz22yMIDmH7G/SPEFOrklOxvSQP+jo+P+A5kKrlT5Ivuh8ziytJqooaI
 K16M1vOzyhLPD5Te49Wtkb9gOE5fyiM1cGm3zVyRurlIXT38Mk8At7KKhxand9TKUYU+
 06fiAW1Ag3Hu5bvd97nkhjfsp1OVxgZw6j66lL6i1IxzE/xr3b29eq0cks3t4suWayH8
 toDRbMNtDpcesjYIVFVijqkIGTX/WXpWlw/tr/vlUAEJwBZDfz4PIXdX8xIbJnHoXKZE
 LpI3oPCV0DQLE7Ky1iMmX84A26KjwV4AZmHDTnqr3p78joplgBcXP2kQfu5a/idl9wW9
 I0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=8G6S3cshgPA48meEAaZ6NSKpV8wAh+/bom1QFfZg+RA=;
 b=p/bxe570SdBh7CDAyppiEn0LttY6aHUNxF61XU3xqjDA9Ru7uHwV/0wUkahG3V473I
 1BxRYnz63CQE49Uud4gY8TV18ZAmkVKDfupl2BYjbeIVWLQE/uUzE0tesekGGv3DRk0H
 yeQNtFpmAqFRNzVwEJXzC5Ob9gBau3tdcKLIVjBdtlMgQnl6RrZ5m4TJPiAqyd0HDuNF
 2aBmBYzfwepIzEmcnnQ/08zGXgzfk5In5NGskVa+DtgSSJIvPS2ZVr1mN+AgsnaGQN5U
 faMNlq3nHL5IUR3kuKUqmqIXXD+GMn+YWLrbdRCwoNVTBqY5eMI1gqsBebFJIrcVlln9
 /rLg==
X-Gm-Message-State: APjAAAULNlCbPDJARK8HA0woITLGBIqp4J5HpIHxBn+rLnBZ1RtpEAms
 /F++0qtlU+0A9NXFDX0igUI1ug==
X-Google-Smtp-Source: APXvYqwjU1Ui1UMRe9RLZl8pcHFR82mLoJ27NKFfFLY/3m80s2ombZrFfKK0FAQu/FR/MBeFpnLGEQ==
X-Received: by 2002:a1c:dd0a:: with SMTP id u10mr3289081wmg.100.1568723199690; 
 Tue, 17 Sep 2019 05:26:39 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id w12sm3314438wrg.47.2019.09.17.05.26.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 05:26:39 -0700 (PDT)
Date: Tue, 17 Sep 2019 05:26:38 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <20190916223323.07664bc2@why>
Message-ID: <alpine.DEB.2.21.9999.1909170525170.30255@viisi.sifive.com>
References: <3c0eb4e9-ee21-d07b-ad16-735b7dc06051@bluespec.com>
 <mhng-df6c7aad-d4fd-4c44-96c8-bf63465e0c97@palmer-si-x1c4>
 <20190916223323.07664bc2@why>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_052643_113542_AD3EFE71 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jason@lakedaemon.net, David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Darius Rad <darius@bluespec.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Just tested this on the SiFive HiFive Unleashed.  Seems to work OK; 
however I did not stress-test it.

Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # HiFive Unleashed


- Paul


# !cat
cat /proc/interrupts 
           CPU0       CPU1       CPU2       CPU3       
  1:          0          0          0          0  SiFive PLIC   5  10011000.serial
  3:          0          0          0          0  SiFive PLIC  51  10040000.spi
  4:       6266          0          0          0  SiFive PLIC   4  10010000.serial
  5:        102          0          0          0  SiFive PLIC   6  10050000.spi
  6:         37          0          0          0  SiFive PLIC  53  eth0
IPI0:      1134      21128       9024     220261  Rescheduling interrupts
IPI1:        10        143         18          7  Function call interrupts
IPI2:         0          0          0          0  CPU stop interrupts
#

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
