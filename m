Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFD11A3EBA
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Apr 2020 05:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zB6eoPbFxQzc9EsGjup8MvOhwkt3OS+0JMpUU/JQ+5I=; b=ITib9cYNCRpsWh
	WBc9ID+OL9TmHA2p3Qtu4ACv7FA9st9LLPGN+EGp85XzQ31EYU7DnXJPV8tzWZPzGAmcVfgVggGyt
	/MVZ64+C/CpPiBRYZd/OgUWxchzTxwZuUE8nHgPxFjSx4QIEGXAC+HhnsWdeTvX7lMQnQUtunvNlf
	npJ3sgZ6e6iPJhAEWwqvu7QaTLEunEYeYgjVfa+Pr6H/qUiZwQAsnPWYEyt0S+JRr/pYIH4R0xvJf
	TYo5NwzDZ5lWI8VjzAqUTaoJjXZgMQmZQqhFHLhPrEsMHjNLv7R79uqd+zYppB3ICR5XfWhSAnyz/
	tdu/dvJNsC4zj5GvwcwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkJe-00062R-HN; Fri, 10 Apr 2020 03:26:50 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkJX-00061d-F8
 for linux-riscv@lists.infradead.org; Fri, 10 Apr 2020 03:26:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ng8so318964pjb.2
 for <linux-riscv@lists.infradead.org>; Thu, 09 Apr 2020 20:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zB6eoPbFxQzc9EsGjup8MvOhwkt3OS+0JMpUU/JQ+5I=;
 b=ni8EWjmuQStnLsqCU4sK/2M4goQg86KfwvAnE/aO3L+hEhfDxeKN/FeSp43wy/SPI9
 bvOPCTUR2KFzs1BO3hr0jpt3sSUgkXD50l+acpuGQhfr+nVnCsHUIdC2+lIHaAb78txV
 1KkrykMoValQJ5HgmPmls73DBPIPw69rk+DJsmLTzvCPvM+Kc7jndDY3moN/qRPln0z6
 zm8kAQ7u+GtoxIlC5+bxdiCH/MqCWbWVlPc6+lUEDL8811seCfROPECbULVgmjt1tsnw
 8nDnZWuOa+SjuC6NrP26qrSlQQo9JllcVCFhA3zXOHc/bTkT/0+tS8NtAPpoqBEpNpSL
 LM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zB6eoPbFxQzc9EsGjup8MvOhwkt3OS+0JMpUU/JQ+5I=;
 b=WY9rrrtB1s1JsDCv3JI2OWzXDaDIHqMSk8/dmOlgLgGMOaHg/UAmqqx0siF4tIn5mF
 TCgMQ1Gt53KW9Ove29iIUi3Si4eQhgqAhR1iEzecIjEP349s8pi/gOdPsi/3XmT71fCf
 Xzj2Q5ZPbdvNiZ03XutpioF7eZayMbunRhVgb36Sk1vxFiC3fCs3R6JdMdKueU0zR1Wd
 sbDSmWGNS4D0k58vYldq4CEAuuJuCx6Y6WGWVRxJl98UpbeJ2x/vjFAOonTVjNbBskIT
 0iuY7Z+UqpYK3pkw/q2ujKD8hHVM7Wckd/Wr3Iev4uoKr6gHSuRG5C2c7S7E6liv6cNt
 b9Sg==
X-Gm-Message-State: AGi0PualxdMdELhFot7rGOebZV+fOOCafpG4JfJHZsLt6OgdbYqGRxj7
 sN7JIIPNbPkXgDh3u4EyDch8wQ==
X-Google-Smtp-Source: APiQypJcSapHwKHabYnMU4zdM3x+GcsZt0Fy7vnxCpA0QyKHKGjvjEt7KxbZtoeQ9K+Sb6vfBR5Flw==
X-Received: by 2002:a17:902:8c94:: with SMTP id
 t20mr2699169plo.336.1586489199438; 
 Thu, 09 Apr 2020 20:26:39 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id w127sm480372pfw.218.2020.04.09.20.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 20:26:38 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: remove the assert of lock for cpu_running
Date: Fri, 10 Apr 2020 11:26:34 +0800
Message-Id: <20200410032634.57511-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_202644_080072_FD3990EF 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The cpu_running is not a lock-class, it lacks the dep_map member in
completion. It causes the error as follow:

arch/riscv/kernel/smpboot.c: In function '__cpu_up':
./include/linux/lockdep.h:364:52: error: 'struct completion' has no member named 'dep_map'
  364 | #define lockdep_is_held(lock)  lock_is_held(&(lock)->dep_map)
      |                                                    ^~
./include/asm-generic/bug.h:113:25: note: in definition of macro 'WARN_ON'
  113 |  int __ret_warn_on = !!(condition);    \
      |                         ^~~~~~~~~
./include/linux/lockdep.h:390:27: note: in expansion of macro 'lockdep_is_held'
  390 |   WARN_ON(debug_locks && !lockdep_is_held(l)); \
      |                           ^~~~~~~~~~~~~~~
arch/riscv/kernel/smpboot.c:118:2: note: in expansion of macro 'lockdep_assert_held'
  118 |  lockdep_assert_held(&cpu_running);

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/smpboot.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 8bc01f0ca73b..bbc1baa2d90c 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -115,7 +115,6 @@ int __cpu_up(unsigned int cpu, struct task_struct *tidle)
 		  task_stack_page(tidle) + THREAD_SIZE);
 	WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
 
-	lockdep_assert_held(&cpu_running);
 	wait_for_completion_timeout(&cpu_running,
 					    msecs_to_jiffies(1000));
 
-- 
2.26.0


