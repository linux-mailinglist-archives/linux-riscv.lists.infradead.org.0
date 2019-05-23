Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9227028C39
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Euo+H/LxrE8h9/UR9XAojP9fCt33cdKJGY8ZacXvIHo=; b=opDYB4/HJdwtJP
	D1MCk+oFBmP9ldCTFRCPO0lzAo+/3r9BWKw2EQVvQhFr8MtqA/uCBecmZ+h0hIw05Qx0hdxvnUzrD
	GlduEwvNus0Ux0b0r3GnvfWDsgjcemdr8KiNnVmyUBXDr7LJ0FrsDqL1vaIv5x58hWe4TLkFTSDlX
	fqRdbUu+1AiQjFAGEzkFs/150iqUEELjkk7b280qjmg/nZHLgggUwfGCdJp2bv+qGAyYQ/+jqI4m6
	403df5gzikSc2wrsFyXtmHz/eINMh0uIUsHlgPMuSYq16t1dyIPWRZ7WqopVdQlPrMcNMjqDAJnGa
	Zyk7+/1omuJ0umkF2K1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTv6t-0002mn-D3; Thu, 23 May 2019 21:18:47 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTv6p-0002lu-J8
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:18:44 +0000
Received: by mail-pg1-x52c.google.com with SMTP id a3so3783904pgb.3
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=ujj+o/vSu15Ty+Rp+nrDzMIbmAH9h04AWhMkoHFeyO0=;
 b=XhxlEH5CcI2gyctTFBouWYiONs9yWsT7gutjyiAeCoA+RzSCvddXAyX7Y/iggtzGzM
 BVoaG19+zlam9Hp/Qb5613T3cTqO+IzPTA5gNqY6UUFBT8/XF+po57nzOqTgjD9SaDfu
 LeoqmRPEtETy/ow4uf9uhTPt/btkFFSK2XF4DT49shTiyVckp7nPcCCownFeu1uzNfVx
 NpCW0DCoc5QPh7CYcRUqFNMtRF/MqsNGmDADIJsOYFkbpC8S0vLpQWt1eK1nh/5UHUDu
 a6xQ8MY+52NB/i1hnUoOBQYZMlseF+dPkMAd8gvc+HAPoqEYu+Ci3vFR1YqzP6kgCzRz
 I2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ujj+o/vSu15Ty+Rp+nrDzMIbmAH9h04AWhMkoHFeyO0=;
 b=RQosAj/5T5aEI5+4EdD0Sq4v6iq8eTccEcEEvQX7YwvkFzqW2A31wjj52JHeWtdOGq
 fqd42FG8wGKu8TK+aHO1p/TvuhTW/8Np9uQuM2pN8HuiraqXK7h50dq1FLlv6ivFRXQK
 1jgITLrOGUHA0s5B5teNXhA4MFybtZN16k1uJXIzKLRetH0w2LDy60LwraoAKsWDslxt
 8qoWntXALJzuzvSeL4R9GAAg0xaQNSwS+u3UXY7yyWZS2h0tyV7Nhox+bHp5zEY4Wlt5
 fIQS+5riCIgXSocMLgXxlLtz02EbYaSVYJbxCk2IU1fCjN8AvpF457PiOWhZ6HjDQnKd
 ciBA==
X-Gm-Message-State: APjAAAXeUr8Y+2V6qty5nlIbiilQpahny8DwYR0PXiXduLOINtXXs6gi
 n81NK53ZilPK/bfhyR1XTZpZaA==
X-Google-Smtp-Source: APXvYqxqYSViegfFI1nabA3JyoOIBSF4oGxnep+EVvkKvRbfoK6KkHc1EwG9e0TnSv6IsMTaep4ymA==
X-Received: by 2002:a17:90a:cf87:: with SMTP id
 i7mr4364622pju.72.1558646322445; 
 Thu, 23 May 2019 14:18:42 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id t5sm234092pgn.80.2019.05.23.14.18.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:18:41 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2 0/2] tools: PCI: Fix broken pcitest compilation
Date: Thu, 23 May 2019 14:17:59 -0700
Message-Id: <1558646281-12676-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_141843_770015_74B1D263 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

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
